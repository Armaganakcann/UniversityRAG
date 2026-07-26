# UniversityRAG

> **Enterprise & Open Source Citation-First RAG Platform for Higher Education Governance**

UniversityRAG is a production-ready, citation-first Retrieval-Augmented Generation (RAG) platform tailored for higher education regulations, senate decrees, academic calendars, and curriculum guidelines.

---

## 🏛️ Architecture Overview

- **Backend:** FastAPI (Python 3.11+) with Async SQLAlchemy & Pydantic V2
- **Vector Database:** Qdrant (gRPC + Payload Indexing)
- **Relational Database:** PostgreSQL 16 (Row-Level Security & Multi-Tenancy)
- **Cache & State:** Redis 7 (Vector Similarity Semantic Caching & Rate Limiting)
- **Frontend:** Next.js 14+ (App Router) with Zustand & TailwindCSS
- **Workers:** Event-driven Celery + RabbitMQ Workflows
- **Embeddings & Re-ranking:** BAAI `bge-m3` & `bge-reranker-large`
- **Protocol Support:** Native Model Context Protocol (MCP) Server

---

## 🚀 Quick Start

### Prerequisites
- Python 3.11+
- Node.js 20+ & `pnpm`
- `uv` Python Package Manager
- Docker & Docker Compose

### Local Setup

```bash
# 1. Clone the repository
git clone https://github.com/UniversityRAG/UniversityRAG.git
cd UniversityRAG

# 2. Run developer setup script
bash scripts/setup-dev.sh

# 3. Start development environment
make dev
```

---

## 📚 Documentation Links

- [PRD (Product Requirements Document)](file:///C:/Users/armag/.gemini/antigravity/brain/5cb8834b-2d66-4b18-aea0-95b665a784dd/UniversityRAG_PRD.md)
- [SDD (System Design Document)](file:///C:/Users/armag/.gemini/antigravity/brain/5cb8834b-2d66-4b18-aea0-95b665a784dd/UniversityRAG_SDD.md)
- [RBP (Repository Blueprint Document)](file:///C:/Users/armag/.gemini/antigravity/brain/5cb8834b-2d66-4b18-aea0-95b665a784dd/UniversityRAG_RBP.md)
- [ADR Pack (Architecture Decision Records)](file:///C:/Users/armag/.gemini/antigravity/brain/5cb8834b-2d66-4b18-aea0-95b665a784dd/UniversityRAG_ADR_Pack.md)
- [Backlog & Roadmap](file:///C:/Users/armag/.gemini/antigravity/brain/5cb8834b-2d66-4b18-aea0-95b665a784dd/UniversityRAG_Backlog.md)
- [Bootstrap Kit](file:///C:/Users/armag/.gemini/antigravity/brain/5cb8834b-2d66-4b18-aea0-95b665a784dd/UniversityRAG_BootstrapKit.md)

---

## 📄 License

This project is licensed under the Apache 2.0 License - see the [LICENSE](LICENSE) file for details.
