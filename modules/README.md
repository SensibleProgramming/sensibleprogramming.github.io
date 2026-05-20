# Educational Content

Interactive learning modules and infographics for social media posting and educational use. 46 modules covering AI fundamentals, security, DevOps, and best practices.

## Adding New Content

**Quick workflow** (1-5 files at a time):
1. Save your new files to a folder
2. Run: `.\add-content.ps1`
3. Drag/paste the folder path
4. Answer prompts (title, description, topic)
5. Script renames files + updates README

**Sync workflow** (if README got out of sync):
- Run: `.\sync-readme.ps1`
- Scans folder, compares to README, updates automatically

---

## Content Library

### AI Fundamentals

**Core Concepts**
- **ai-taxonomy-tree.html** — Interactive taxonomy of AI concepts and relationships
- **neural-networking.html** — Neural networks fundamentals and architecture
- **llms-large-language-models-deep-dive.html** — How large language models work

**Practical Applications**
- **ai-image-generation.html** — AI image generation processes and techniques
- **prompt-engineering-best-practices.html** — Writing effective prompts for LLMs
- **rag-retrieval-augmented-generation.html** — Combining LLMs with external knowledge

**Enabling Technologies**
- **vector-databases.html** — Embeddings, similarity search, semantic understanding
- **blockchain-transactions.html** — How blockchain transactions work

### AI Security & Safety

- **prompt-injection.html** — Prompt injection attacks and defenses
- **prompt-injection-v2.html** — Alternate version
- **securing-ai-assets.html** — Security considerations for AI systems
- **security-risks-of-integrating-ai-agents.html** — Risks when using AI agents in production
- **api-security-tool-config-vulnerabilities.html** — API security, authentication, rate limiting, tool config

### AI Operations & Ethics

- **ai-ethics-bias.html** — Fairness, bias in models, responsible AI
- **testing-aiml-systems.html** — Validating ML models, hallucination detection
- **ml-monitoring-observability.html** — Model drift, performance monitoring post-deployment
- **data-privacy-compliance.html** — GDPR, data handling, PII protection

### DevOps & Infrastructure

- **ai-agents-in-cicd-pipeline.html** — Using AI agents in CI/CD workflows
- **docker-containerization.html** — Container basics for deployment

### Git & Version Control

- **github-branches.html** — Git/GitHub branching strategies
- **git-branching-strategies.html** — Overview of branching strategies
- **git-reflog-and-what-is-does.html** — Git reflog for tracking repository history
- **common-git-commands.html** — Essential Git commands reference

---

## Infographics

Static visual summaries for social media.

### AI Fundamentals
- **ai-image-generation-infographic.jpg**
- **llms-large-language-models-deep-dive.jpg**
- **neural-networks-infographic.jpg**
- **retrieval-rag-retrieval-augmented-generation.jpg**
- **vector-databases.jpg**

### Security & Safety
- **prompt-injection-infographic.jpg**
- **securing-ai-assets-infographic.jpg**
- **security-risks-of-integrating-ai-agents.jpg**
- **api-security-tool-config-vulnerabilities.jpg**

### AI Operations & Ethics
- **ai-ethics-bias.jpg**
- **testing-aiml-systems.jpg**
- **ml-monitoring-observability.jpg**
- **data-privacy-compliance.jpg**

### DevOps & Infrastructure
- **ai-agents-in-cicd-security.jpg**
- **docker-containerization.jpg**

### Git & Version Control
- **git-branches-infographic.jpg**
- **branching-strategies-for-git.jpg**
- **common-git-commands.jpg**
- **git-reflog-and-what-is-does.jpg**

### Blockchain
- **blockchain-transactions-infographic.jpg**

---

## Usage

- **Social media**: Post infographics with a link to the corresponding HTML module
- **Learning**: Host HTML modules on a web server or CDN for interactive learning
- **Courses**: Bundle modules into learning paths by topic
- **Maintenance**: Run `sync-readme.ps1` quarterly to catch any drift

## Learning Paths

Suggested progressions by audience:

**Developers new to AI:**
1. AI Taxonomy
2. Neural Networks
3. LLMs Deep Dive
4. Prompt Engineering
5. RAG & Vector Databases

**Security Teams:**
1. Securing AI Assets
2. Prompt Injection
3. API Security
4. AI Ethics & Bias
5. Data Privacy & Compliance

**DevOps/MLOps:**
1. Docker & Containerization
2. AI Agents in CI/CD
3. ML Monitoring & Observability
4. Testing AI/ML Systems
5. Git Branching Strategies
