#!/bin/bash
# build-pdf.sh — 生成 O'Reilly 风格中文 PDF
# 依赖: pandoc, xelatex (TeX Live)
set -euo pipefail

BOOK_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SRC_DIR="$BOOK_DIR/src"
OUTPUT_DIR="$BOOK_DIR/output"
META_YAML="$BOOK_DIR/scripts/metadata.yaml"
TEMPLATE="$BOOK_DIR/scripts/oreilly-template.tex"

mkdir -p "$OUTPUT_DIR"

echo "=== 行业大模型应用实践 — PDF 构建 ==="
echo ""

# 收集所有章节 markdown（按顺序）
# 使用 SUMMARY.md 定义的顺序
CHAPTERS=(
    "chapter-01/README.md"
    "chapter-02/README.md"
    "chapter-03/README.md"
    "chapter-04/README.md"
    "chapter-05/README.md"
    "chapter-06/README.md"
    "chapter-07/README.md"
    "chapter-08/README.md"
    "chapter-09/README.md"
    "chapter-10/README.md"
    "chapter-11/README.md"
    "chapter-12/README.md"
    "chapter-13/README.md"
    "chapter-14/README.md"
    "chapter-15/README.md"
    "chapter-16/README.md"
    "chapter-17/README.md"
    "chapter-18/README.md"
    "appendix-a.md"
    "appendix-b.md"
    "appendix-c.md"
    "appendix-d.md"
    "appendix-e.md"
)

INPUT_FILES=()
for ch in "${CHAPTERS[@]}"; do
    if [ -f "$SRC_DIR/$ch" ]; then
        INPUT_FILES+=("$SRC_DIR/$ch")
    else
        echo "警告: 找不到 $SRC_DIR/$ch，跳过"
    fi
done

echo "收录 ${#INPUT_FILES[@]} 个文件"
echo ""

# 检查数学公式是否存在
# 注意：XeLaTeX PDF 输出不需要 --mathjax，XeLaTeX 原生支持数学公式
MATH_FLAG=""

echo "开始 Pandoc → XeLaTeX 转换..."
echo ""

pandoc \
    "${INPUT_FILES[@]}" \
    -o "$OUTPUT_DIR/industry-llm-book.pdf" \
    --from=markdown \
    --pdf-engine=xelatex \
    --pdf-engine-opt=-interaction=nonstopmode \
    --pdf-engine-opt=-file-line-error \
    --template="$TEMPLATE" \
    --metadata-file="$META_YAML" \
    --toc \
    --toc-depth=3 \
    --number-sections \
    --top-level-division=chapter \
    -V CJKmainfont="Songti SC" \
    -V mainfont="Songti SC" \
    -V sansfont="Hiragino Sans GB" \
    -V monofont="Menlo" \
    -V fontsize=11pt \
    -V geometry:margin=2.5cm \
    -V geometry:a4paper \
    -V colorlinks=true \
    -V linkcolor=oreilly-blue \
    -V urlcolor=oreilly-blue \
    -V toccolor=black \
    -V documentclass=book \
    -V classoption=openany \
    --highlight-style=tango \
    --wrap=none \
    $MATH_FLAG \
    2>&1 | tail -30

if [ -f "$OUTPUT_DIR/industry-llm-book.pdf" ]; then
    SIZE=$(du -h "$OUTPUT_DIR/industry-llm-book.pdf" | cut -f1)
    PAGES=$(python3 -c "
import subprocess
result = subprocess.run(['mdls', '-name', 'kMDItemNumberOfPages', '$OUTPUT_DIR/industry-llm-book.pdf'], capture_output=True, text=True)
print(result.stdout.split('=')[-1].strip() if '=' in result.stdout else 'N/A')
" 2>/dev/null || echo "N/A")
    echo ""
    echo "=== PDF 生成成功 ==="
    echo "文件: $OUTPUT_DIR/industry-llm-book.pdf"
    echo "大小: $SIZE"
    echo "页数: $PAGES"
else
    echo ""
    echo "=== PDF 生成失败 ==="
    exit 1
fi
