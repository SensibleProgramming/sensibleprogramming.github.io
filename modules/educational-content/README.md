# Educational Content

Interactive learning modules and infographics for social media posting and educational use. **60+ modules** covering AI fundamentals, security, operations, DevOps, and advanced topics.

## Adding New Content

**Interactive workflow** (1-5 files at a time):
1. Save your new files to a folder
2. Run: `.\add-content.ps1`
3. Drag/paste the folder path
4. For each file, answer:
   - Title (for README)
   - Description (one-liner)
   - Section (1-6: Fundamentals, Security, Operations, Ethics, DevOps, Git)
5. Script renames files + inserts into correct README section automatically

**Sync workflow** (if README got out of sync):
- Run: `.\sync-readme.ps1`
- Scans folder, compares to README, updates automatically

---

## Content Library by Topic

### AI Fundamentals & Core Concepts

**Foundational Theory**
- **ai-taxonomy-tree.html** — Interactive taxonomy of AI concepts and relationships
- **neural-networking.html** — Neural networks fundamentals and architecture
- **llms-large-language-models-deep-dive.html** — How large language models work
- **nlp-fundamentals.html** — Natural language processing, tokenization, embeddings
- **computer-vision-fundamentals.png** — CNN architecture, object detection, classification

**Applied Techniques**
- **ai-image-generation.html** — AI image generation processes and techniques
- **prompt-engineering-best-practices.html** — Writing effective prompts for LLMs
- **rag-retrieval-augmented-generation.html** — Combining LLMs with external knowledge
- **vector-databases.html** — Embeddings, similarity search, semantic understanding
- **fine-tuning-model-training.html** — Customizing models for specific tasks
- **model-evaluation-metrics.html** — Measuring model performance (precision, recall, F1, AUC)

**Reference & Landscape**
- **open-source-ai-model-landscape.html** — Llama, Mistral, Dolphin, and available models
- **blockchain-transactions.html** — How blockchain transactions work

---

### AI Security & Threat Modeling

**Attack Vectors**
- **prompt-injection.html** — Prompt injection attacks and defenses
- **prompt-injection-v2.html** — Alternate version
- **adversarial-attacks-model-robustness.html** — Adversarial examples and model robustness
- **model-extraction-attacks.html** — Stealing/copying models from APIs
- **how-automated-pr-reviews-are-vulnerable.html** — Security risks in AI-powered code review

**Defense & Hardening**
- **securing-ai-assets.html** — Security considerations for AI systems
- **security-risks-of-integrating-ai-agents.html** — Risks when using AI agents in production
- **api-security-tool-config-vulnerabilities.html** — API security, authentication, rate limiting, tool config

---

### AI Operations & Reliability

**Quality Assurance**
- **testing-aiml-systems.html** — Validating ML models, hallucination detection
- **debugging-troubleshooting-llms.html** — Why models fail, tracing, troubleshooting
- **model-evaluation-metrics.html** — Precision, recall, ROC, F1, confusion matrices
- **a-b-testing-for-ai-models.html** — Testing model variants in production

**Production & Monitoring**
- **ml-monitoring-observability.html** — Model drift, performance monitoring post-deployment
- **model-serving-inference.html** — Deploying models at scale, inference optimization
- **version-control-for-models-data.html** — MLOps, tracking model/data versions
- **ai-cost-optimization.html** — Token pricing, inference costs, model selection for budget

---

### Ethics, Privacy & Governance

- **ai-ethics-bias.html** — Fairness, bias in models, responsible AI
- **data-privacy-compliance.html** — GDPR, data handling, PII protection

---

### DevOps & Infrastructure

- **ai-agents-in-cicd-pipeline.html** — Using AI agents in CI/CD workflows
- **docker-containerization.html** — Container basics for deployment

---

### Git & Version Control

- **github-branches.html** — Git/GitHub branching strategies
- **git-branching-strategies.html** — Overview of branching strategies
- **git-reflog-and-what-is-does.html** — Git reflog for tracking repository history
- **common-git-commands.html** — Essential Git commands reference

---

## Infographics by Topic

### AI Fundamentals
- **ai-image-generation-infographic.jpg**
- **llms-large-language-models-deep-dive.jpg**
- **neural-networks-infographic.jpg**
- **nlp-fundamentals.png**
- **computer-vision-fundamentals.png**
- **retrieval-rag-retrieval-augmented-generation.jpg**
- **vector-databases.jpg**
- **fine-tuning-model-training.png**
- **model-evaluation-metrics.png**
- **open-source-ai-model-landscape.jpg**

### Security & Attacks
- **prompt-injection-infographic.jpg**
- **adversarial-attacks-model-robustness.jpg**
- **model-extraction-attacks.jpg**
- **securing-ai-assets-infographic.jpg**
- **security-risks-of-integrating-ai-agents.jpg**
- **api-security-tool-config-vulnerabilities.jpg**
- **how-automated-pr-reviews-are-vulnerable.jpg**

### Operations & Production
- **model-serving-inference.png**
- **ml-monitoring-observability.jpg**
- **version-control-for-models-data.jpg**
- **a-b-testing-for-ai-models.jpg**
- **debugging-troubleshooting-llms.png**
- **ai-cost-optimization.jpg**
- **ai-agents-in-cicd-security.jpg**
- **testing-aiml-systems.jpg**

### Ethics & Governance
- **ai-ethics-bias.jpg**
- **data-privacy-compliance.jpg**

### DevOps & Infrastructure
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
- **Maintenance**: Run `sync-readme.ps1` quarterly to keep in sync

---

## Learning Paths

Suggested progressions by audience and skill level:

### 🟢 Beginner: Developers New to AI
1. AI Taxonomy → Neural Networks → LLMs Deep Dive
2. Prompt Engineering → RAG & Vector Databases
3. Model Evaluation Metrics
4. (Optional: Computer Vision or NLP Fundamentals)

### 🟡 Intermediate: Hands-On ML Engineers
1. Fine-tuning & Model Training
2. Model Evaluation & Metrics
3. A/B Testing for AI Models
4. Debugging & Troubleshooting LLMs
5. Model Serving & Inference

### 🔴 Advanced: MLOps & Production
1. Model Serving & Inference at Scale
2. ML Monitoring & Observability
3. Version Control for Models & Data
4. AI Cost Optimization
5. Model Extraction Attacks

### 🛡️ Security Focus
1. Securing AI Assets
2. Prompt Injection & Defenses
3. Adversarial Attacks & Model Robustness
4. Model Extraction Attacks
5. API Security & Tool Config
6. Data Privacy & Compliance

### 🏭 DevOps/SRE Focus
1. Docker & Containerization
2. AI Agents in CI/CD Pipelines
3. ML Monitoring & Observability
4. Cost Optimization
5. Git Branching Strategies

### 💼 Executive/Product Focus
1. AI Taxonomy (concepts)
2. Securing AI Assets (risks)
3. AI Ethics & Bias (governance)
4. Data Privacy & Compliance (legal)
5. Cost Optimization (business)

---

## Content Quality Notes

All modules have been reviewed for accuracy. Minor caveats:
- Vector database descriptions are slightly anthropomorphized (use "computes similarity" not "understands")
- RAG hallucination mitigations noted are current best practices
- Prompt injection definitions align with current threat models
- Security claims are grounded in OWASP + industry standards

For updates or corrections, run `sync-readme.ps1` and check against actual files in the folder.
