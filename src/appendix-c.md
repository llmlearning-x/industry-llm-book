# 附录 C：开源工具与框架清单

> 本附录汇总行业大模型开发中常用的开源工具与框架，按功能类别分为六大板块。每项工具列出项目名称、仓库地址、简介及典型适用场景，供读者按需选型参考。

---

## C.1 基座模型

行业大模型的构建通常以开源基座模型为起点，以下列出当前主流的开源大语言模型。

| 名称 | 仓库地址 | 简介 | 适用场景 |
|------|----------|------|----------|
| DeepSeek | [github.com/deepseek-ai/DeepSeek-V3](https://github.com/deepseek-ai/DeepSeek-V3) | 幻方量化旗下 DeepSeek 团队开源的 MoE 架构大模型，DeepSeek-V3 拥有 671B 总参数、37B 激活参数，支持 128K 上下文。DeepSeek-R1 具备强推理能力。 | 通用对话、数学推理、代码生成、多语言任务 |
| Qwen（通义千问） | [github.com/QwenLM/Qwen3](https://github.com/QwenLM/Qwen3) | 阿里云开源模型系列，Qwen3 支持 128K 上下文，提供多种参数规格（0.6B-235B），支持思考模式与非思考模式切换，工具调用能力强。 | 中文场景、工具调用、Agent 应用、多语言任务 |
| GLM（智谱清言） | [github.com/THUDM/GLM-4](https://github.com/THUDM/GLM-4) | 清华大学与智谱 AI 联合开发的通用语言模型系列，GLM-4 支持多轮对话、长文本理解与代码生成，提供 9B 开源版本。 | 中文理解、学术研究、知识问答、文本分析 |
| Llama | [github.com/meta-llama/llama3](https://github.com/meta-llama/llama3) | Meta 开源的大语言模型系列，Llama 3.1 提供 8B/70B/405B 多种规格，支持 128K 上下文，生态最为丰富。 | 英文为主场景、多语言微调、学术研究、生产部署 |
| Mistral | [github.com/mistralai/mistral-src](https://github.com/mistralai/mistral-src) | 法国 Mistral AI 公司开源的模型系列，Mistral 7B 和 Mixtral 8x7B（MoE 架构）以高性价比著称，支持滑动窗口注意力。 | 资源受限环境、欧洲语言、高效推理场景 |
| Yi | [github.com/01-ai/Yi](https://github.com/01-ai/Yi) | 零一万物开源的大语言模型，Yi-1.5 提供 6B/9B/34B 参数规格，中文能力突出，支持 4K/16K/32K 上下文长度。 | 中文场景、轻量级部署、边缘设备推理 |
| Baichuan（百川） | [github.com/baichuan-inc/Baichuan2](https://github.com/baichuan-inc/Baichuan2) | 百川智能开源的大语言模型系列，Baichuan 2 提供 7B/13B 参数规格，针对中文优化，商用友好的 Apache 2.0 协议。 | 中文企业应用、垂直领域微调、商业部署 |

---

## C.2 RAG 框架

检索增强生成（RAG）是行业大模型落地的核心技术路线，以下框架提供了从文档解析到检索生成的完整能力。

| 名称 | 仓库地址 | 简介 | 适用场景 |
|------|----------|------|----------|
| LlamaIndex | [github.com/run-llama/llama_index](https://github.com/run-llama/llama_index) | 数据框架，提供丰富的数据连接器、索引结构和检索策略，支持多种向量数据库后端，拥有完整的 RAG Pipeline 抽象。 | 企业知识库构建、多数据源集成、复杂 RAG 流水线开发 |
| LangChain | [github.com/langchain-ecosystem/langchain](https://github.com/langchain-ecosystem/langchain) | 最流行的 LLM 应用开发框架，提供模块化的 Chain、Tool、Memory 抽象，支持多种模型和向量库集成，生态插件丰富。 | LLM 应用快速原型、Chain 编排、多模型切换、Agent 开发 |
| RAGFlow | [github.com/infiniflow/ragflow](https://github.com/infiniflow/ragflow) | 英飞流开源的 RAG 引擎，专注于深度文档理解，支持 PDF、Word、Excel 等多种格式的精准解析与切分，内置 OCR 和表格识别。 | 金融报告解析、合同分析、复杂文档 RAG、中文文档处理 |
| QAnything | [github.com/netease-youdao/QAnything](https://github.com/netease-youdao/QAnything) | 网易有道开源的本地化知识库问答系统，支持离线部署，内置多种向量检索模式，提供开箱即用的 Web UI 和 API 服务。 | 企业内部知识库、私有化部署、快速搭建问答系统 |
| Dify | [github.com/langgenius/dify](https://github.com/langgenius/dify) | 开源 LLM 应用开发平台，提供可视化的 Workflow 编排、RAG Pipeline 和 Agent 构建，支持多模型管理，适合非技术人员参与开发。 | 低代码 AI 应用搭建、团队协作开发、RAG 工作流编排 |

---

## C.3 Agent 框架

智能体（Agent）是行业大模型从"问答"走向"执行"的关键架构，以下框架提供了 Agent 的编排、协作和管理能力。

| 名称 | 仓库地址 | 简介 | 适用场景 |
|------|----------|------|----------|
| LangGraph | [github.com/langchain-ecosystem/langgraph](https://github.com/langchain-ecosystem/langgraph) | LangChain 团队推出的基于图（Graph）的 Agent 编排框架，支持状态机、循环、分支等复杂控制流，具备内置持久化和人机协同能力。 | 复杂工作流编排、生产级 Agent、人机协同、有状态对话 |
| CrewAI | [github.com/crewAIInc/crewAI](https://github.com/crewAIInc/crewAI) | 多智能体协作框架，以"团队（Crew）"和"角色（Agent）"为核心抽象，支持角色定义、任务分配和工具共享，API 简洁易用。 | 多角色协作任务、内容生产、研究调研、自动化流程 |
| AutoGen | [github.com/microsoft/autogen](https://github.com/microsoft/autogen) | 微软开源的多 Agent 对话框架，支持 Agent 之间的自动化对话和协作，内置代码执行和人工反馈机制，适合研究和实验。 | 多 Agent 对话实验、代码生成与审查、研究型项目 |
| OpenAI Agents SDK | [github.com/openai/openai-agents-python](https://github.com/openai/openai-agents-python) | OpenAI 官方发布的轻量级 Agent SDK，提供 Agent 定义、工具调用、Handoff（交接）和护栏（Guardrails）等核心原语。 | OpenAI 生态应用、轻量级 Agent 开发、快速原型验证 |
| MetaGPT | [github.com/geekan/MetaGPT](https://github.com/geekan/MetaGPT) | 以软件工程为灵感的多 Agent 框架，模拟产品经理、架构师、工程师等角色协作，可从一句话需求生成完整的代码项目。 | 自动化软件开发、代码生成、需求分析、技术方案设计 |

---

## C.4 向量数据库

向量数据库是 RAG 架构的核心基础设施，负责存储和高效检索文档的向量嵌入表示。

| 名称 | 仓库地址 | 简介 | 适用场景 |
|------|----------|------|----------|
| Milvus | [github.com/milvus-io/milvus](https://github.com/milvus-io/milvus) | Zilliz 开源的云原生向量数据库，支持亿级向量检索，提供多种索引类型（IVF、HNSW、DiskANN 等），具备高可用和水平扩展能力。 | 大规模企业级应用、十亿级向量检索、云原生部署 |
| Weaviate | [github.com/weaviate/weaviate](https://github.com/weaviate/weaviate) | 支持多模态搜索的向量数据库，内置多种嵌入模型集成，提供 GraphQL 和 REST API，支持混合搜索（向量+关键词）。 | 多模态检索、语义搜索、混合搜索、快速原型 |
| Qdrant | [github.com/qdrant/qdrant](https://github.com/qdrant/qdrant) | Rust 编写的高性能向量数据库，支持过滤搜索、负载均衡和分布式部署，内存占用小，单节点性能出色。 | 高性能检索场景、资源敏感环境、边缘部署 |
| pgvector | [github.com/pgvector/pgvector](https://github.com/pgvector/pgvector) | PostgreSQL 的向量搜索扩展插件，支持 IVFFlat 和 HNSW 索引，可直接在现有 PostgreSQL 数据库中启用向量检索。 | 已有 PostgreSQL 基础设施、中小规模向量检索、简化技术栈 |
| Chroma | [github.com/chroma-core/chroma](https://github.com/chroma-core/chroma) | 轻量级嵌入式向量数据库，专注于 AI 应用开发体验，API 简洁，支持内置嵌入函数，适合快速启动项目。 | 快速原型验证、小型项目、开发测试环境、Python 生态 |

---

## C.5 微调工具

行业大模型的领域适配通常通过微调实现，以下工具覆盖了从参数高效微调到全参数微调的完整链路。

| 名称 | 仓库地址 | 简介 | 适用场景 |
|------|----------|------|----------|
| PEFT / LoRA | [github.com/huggingface/peft](https://github.com/huggingface/peft) | Hugging Face 官方的参数高效微调库，支持 LoRA、QLoRA、Adapter、Prefix Tuning 等多种方法，与 Transformers 库无缝集成。 | 参数高效微调、单卡训练、资源受限环境、快速实验 |
| Unsloth | [github.com/unslothai/unsloth](https://github.com/unslothai/unsloth) | 专注于加速 LLM 微调的开源项目，通过手写 Triton 内核和优化技术，将微调速度提升 2-5 倍，显存占用减少 60% 以上。 | 快速微调实验、消费级 GPU 训练、LoRA/QLoRA 微调 |
| LLaMA-Factory | [github.com/hiyouga/LLaMA-Factory](https://github.com/hiyouga/LLaMA-Factory) | 统一的大模型微调框架，提供 Web UI 界面，支持 100+ 种模型的全参数微调和参数高效微调，集成了多种训练策略。 | 企业级微调平台、非算法人员操作、多模型统一管理 |
| Axolotl | [github.com/OpenAccess-AI-Collective/axolotl](https://github.com/OpenAccess-AI-Collective/axolotl) | 以 YAML 配置驱动的 LLM 微调工具，支持多种模型架构和训练方法，提供丰富的数据预处理和多 GPU 训练支持。 | 配置化微调流程、多 GPU 分布式训练、高级训练策略 |

---

## C.6 评估工具

大模型应用的评估是保障上线质量的关键环节，以下工具覆盖了从开发调试到上线监控的全链路评估需求。

| 名称 | 仓库地址 | 简介 | 适用场景 |
|------|----------|------|----------|
| LangSmith | [smith.langchain.com](https://smith.langchain.com) | LangChain 生态的云端可观测性与评估平台，提供 Trace 追踪、数据集管理、自动化评估和 Prompt 版本管理，支持 A/B 测试。 | LangChain/LangGraph 应用调试、线上监控、Prompt 迭代优化 |
| Promptflow | [github.com/microsoft/promptflow](https://github.com/microsoft/promptflow) | 微软开源的 LLM 应用开发与评估工具，提供可视化 Flow 编排、批量评估和 CI/CD 集成，适合企业级 Prompt 工程管理。 | Prompt 工程、批量评估、LLM 应用 CI/CD、Azure 生态集成 |
| TruLens | [github.com/truera/trulens](https://github.com/truera/trulens) | 专注于 LLM 应用的评估与监控框架，提供 RAG 三元组评估（相关性、忠实性、答案相关性），支持仪表盘可视化。 | RAG 应用质量评估、幻觉检测、迭代优化、效果监控 |
| RAGAS | [github.com/explodinggradients/ragas](https://github.com/explodinggradients/ragas) | 专门针对 RAG 系统的自动化评估框架，提供上下文精确度、答案忠实度、答案相关性等核心指标，支持 LLM-as-Judge 评估范式。 | RAG 系统效果评估、检索质量分析、生成质量评测、Benchmark 构建 |

---

> **选型建议：** 以上工具与框架并非相互排斥，在实际项目中常常组合使用。例如，以 Qwen 为基座模型，使用 LlamaIndex 构建 RAG 流水线，Milvus 作为向量数据库，LangGraph 编排 Agent，LLaMA-Factory 进行领域微调，LangSmith 进行评估监控，是当前企业落地的典型技术栈组合。建议读者根据团队技术储备、部署环境和业务需求灵活选型。
