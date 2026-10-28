# TUM Insurance AI ($TUMINS)
[![CI/CD Pipeline](https://github.com/elon00/tum-insurance-ai/actions/workflows/ci-cd-pipeline.yml/badge.svg)](https://github.com/elon00/tum-insurance-ai/actions/workflows/ci-cd-pipeline.yml)
[![Reality Check](https://img.shields.io/badge/Reality%20Check-100%2F100%20GENUINE%20GREEN-emerald.svg)](tests/reality_check_harness.py)
[![PQC Standard](https://img.shields.io/badge/NIST-FIPS%20203%2F204-purple.svg)]()
[![Blockchain](https://img.shields.io/badge/Blockchain-Multi-Adapter%20(API3%20/%20Cardano%20/%20EVM%20L2)-blue.svg)]()

> **Decentralized AI-Agent Commercial Liability Insurance with API3 First-Party dAPI oracle claim triggers and verifiable spend policies.**

---

## 🏛️ Project Profile
- **Project Identity:** TUM Insurance AI
- **Asset Ticker:** $TUMINS
- **Core Theme:** Decentralized AI-Agent Commercial Liability & Oracle Triggered Indemnity
- **Blockchain:** Multi-Adapter (API3 / Cardano / EVM L2)
- **Smart Contract:** `TUMOracleInsurance.sol`

---

## 🚀 Key Features
- **Deterministic 64-bit Conway Engine:** Non-linear invariant state machine in zero-dependency Rust (`src/main.rs`).
- **Native Smart Contract:** `TUMOracleInsurance.sol` enforcing non-custodial parametric insurance and solvency invariants.
- **Agentic Actuary Service:** Autonomous Python client in `src/tum_actuary_agent.py`.
- **Interactive QUX Launchpad:** Responsive dashboard with live Conway visualizer and Web4 QR generator (`index.html`).
- **Model Context Protocol (MCP):** 2 native tools exposed via `mcp.json`.

---

## 🧪 Testing & Verification
```bash
# Run 5-Gate Reality Check Test Harness
python tests/reality_check_harness.py

# Run Unit & Integrity Test Suite
python -m unittest discover tests
```
