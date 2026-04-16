# 第 2 章参考文献与研究笔记

## 核心参考文献

### [1] 从RAG到Context：2025年RAG技术年终总结
- **来源**: 知乎专栏 / InfoQ
- **日期**: 2025-12
- **URL**: https://zhuanlan.zhihu.com/p/1984948557493592394
- **摘要**: GraphRAG通过从文档中抽取实体及关系构建知识图谱，实现图查询与推理
- **与本章关系**: RAG技术演进全景（Advanced RAG → GraphRAG → Agentic RAG）

### [2] 2026年RAG技术演进：从向量检索到GraphRAG与Agentic RAG
- **来源**: CSDN
- **日期**: 2026
- **URL**: https://gitcode.csdn.net/69d1bbcf0a2f6a37c59d17da.html
- **摘要**: 传统RAG的三大瓶颈：向量相似≠语义理解、分块破坏上下文、静态知识库无法处理动态需求
- **与本章关系**: RAG架构设计核心参考

### [3] LangGraph vs CrewAI vs AutoGen: Which Agent Framework Should You Actually Use in 2026?
- **来源**: Medium / Data Science Collective
- **日期**: 2026
- **URL**: https://medium.com/data-science-collective/langgraph-vs-crewai-vs-autogen-which-agent-framework-should-you-actually-use-in-2026-b8b2c84f1229
- **摘要**: LangGraph→状态与控制流、CrewAI→角色工作流、AutoGen→多Agent对话
- **与本章关系**: Agent框架选型对比核心参考

### [4] The Best AI Agent Frameworks for 2026 — Ranked
- **来源**: HackerNoon
- **日期**: 2026
- **URL**: https://hackernoon.com/the-best-ai-agent-frameworks-for-2026-ranked-by-someone-whos-shipped-with-all-of-them
- **摘要**: 排名：1.LangGraph 2.CrewAI 3.OpenAI Agents SDK 4.AutoGen 5.Semantic Kernel 6.Pydantic AI
- **与本章关系**: Agent框架实践排名参考

### [5] LLM Fine-tuning Complete Guide: Master LoRA, QLoRA, RLHF, and More (2026)
- **来源**: youngju.dev
- **日期**: 2026-03
- **URL**: https://www.youngju.dev/blog/llm/2026-03-17-llm-finetuning-complete-guide.en
- **摘要**: 覆盖全量微调、LoRA、QLoRA、RLHF、DPO、指令微调的完整指南
- **与本章关系**: 微调技术全景参考

### [6] How to Fine-Tune LLMs in 2026: Costs, GPUs, and Code
- **来源**: Spheron
- **日期**: 2026
- **URL**: https://www.spheron.network/blog/how-to-fine-tune-llm-2026
- **摘要**: 7B模型微调成本已降至$5以下，覆盖Llama/Qwen/DeepSeek
- **与本章关系**: 微调成本与实操参考

### [7] Best Vector Databases in 2026: Complete Comparison Guide
- **来源**: Encore
- **日期**: 2026
- **URL**: https://encore.dev/articles/best-vector-databases
- **摘要**: 对比pgvector/Pinecone/Qdrant/Weaviate/Milvus/Chroma/LanceDB的功能、性能和定价
- **与本章关系**: 向量数据库选型核心参考

### [8] The Best Open Source LLM For Enterprise Deployment in 2026
- **来源**: SiliconFlow
- **日期**: 2026
- **URL**: https://www.siliconflow.com/articles/en/best-open-source-llm-for-enterprise-deployment
- **摘要**: 覆盖DeepSeek-V3、Qwen3-235B-A22B、GLM-4.5等企业级开源模型对比
- **与本章关系**: 基座模型选型参考

## 研究笔记

- RAG演进路线：2023 Advanced RAG → 2024 GraphRAG → 2025-2026 Agentic RAG → 2026+ Multimodal GraphRAG
- Agent框架格局：LangGraph适合生产环境、CrewAI适合快速原型、AutoGen适合研究实验
- 微调成本大幅下降：7B模型微调已低于$5
- 向量数据库选型：Pinecone最易上手、Weaviate混合搜索最优、Milvus企业级规模最强
- 开源模型三强：DeepSeek-V3、Qwen3-235B-A22B、GLM-4.5
