# 第 18 章参考文献与研究笔记

## 核心参考文献

1. AI大模型行业调研报告v2.4，2026年3月
2. 中国大模型落地应用研究报告2025，中欧国际工商学院 × InfoQ研究中心
3. Stanford HAI, AI Index Report 2026, Stanford University
4. IDC FutureScape: Worldwide AI and Automation Predictions 2026
5. McKinsey, The Economic Potential of Generative AI, 2026 Update
6. ISO/IEC 42001:2023, Artificial Intelligence Management System
7. 中国信通院《行业大模型能力评估体系》，2025
8. GPTQ: Accurate Post-Training Quantization for Generative Pre-trained Transformers, 2023
9. Hinton, G., Vinyals, O., & Dean, J. (2015). Distilling the Knowledge in a Neural Network. arXiv:1503.02531
10. Gartner Top Strategic Technology Trends 2026
11. EU AI Act (Regulation (EU) 2024/1689)
12. NIST AI Risk Management Framework (AI RMF 1.0), January 2023

## 行业案例

### 金融+法律跨行业融合
- 某股份制银行"金法通"智能合规审查系统，2025年底部署，反洗钱合规审查效率提升8倍，误报率下降60%

### 模型蒸馏实践
- 某头部券商：DeepSeek-V3（671B MoE）蒸馏至Qwen3-8B，核心业务指标仅落后2-3个百分点，成本降至1/8

### 平台化转型
- 某大型保险集团：18个月完成从单项目到AI中台的平台化转型，覆盖80%核心业务流程，累计服务1200万次API调用

### 跨行业迁移学习
- 某AI公司：金融→法律迁移学习，数据需求减少84%，训练时间减少75%，GPU成本减少79%

## 研究笔记

### 模型压缩技术对比
- 量化（Quantization）：GPTQ、AWQ、GGUF，适用于推理阶段优化
- 剪枝（Pruning）：Structured Pruning，适用于延迟敏感场景
- 低秩分解（Low-Rank Factorization）：LoRA及其变体，适用于参数高效微调
- 推荐：蒸馏+量化组合方案，已在金融、法律、政务等场景验证

### Multi-Agent框架评估
- LangGraph：图状态机编排，适合复杂有环工作流，成熟度高
- CrewAI：角色扮演协作，适合业务流程自动化
- Dify：可视化工作流，适合低代码企业应用
- 推荐"1+N"模式：1个编排Agent + N个执行Agent

### 具身智能行业应用时间线
- 2026-2027：物流仓储分拣规模化
- 2027-2028：制造业柔性装配
- 2028-2029：能源电网巡检、农业采摘
- 2029-2030：医疗手术辅助、建筑施工

### AI治理关键时间节点
- 2026：中国AI法案正式立法
- 2026-2027：AI审计成为强制要求
- 2027：跨境数据流动规则明确
- 2027-2028：AI责任保险出现
- 2028：行业AI资质认证体系成熟
- 2029-2030：AGI安全框架初步建立
