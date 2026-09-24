# 📦 Foundry Simple Storage

![Solidity](https://img.shields.io/badge/Solidity-%23363636.svg?style=for-the-badge&logo=solidity&logoColor=white)
![Foundry](https://img.shields.io/badge/Foundry-Black?style=for-the-badge)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)

## 📖 Overview
A foundational Solidity smart contract rebuilt and deployed using Foundry's professional development toolchain. This project acts as a sandbox for exploring smart contract mechanics, demonstrating local blockchain deployment via Anvil, scripted deployments, and on-chain interaction using Cast.

It serves as a practical transition from browser-based IDEs toward a production-grade development workflow, establishing the technical groundwork for deeper protocol analysis and vulnerability research.

---

## 📑 Table of Contents
- [Tech Stack](#-tech-stack)
- [Project Structure](#-project-structure)
- [Getting Started](#-getting-started)
- [Usage & Commands](#-usage--commands)
- [Local Deployment & Interaction](#-local-deployment--interaction)
- [Security & Auditing Focus](#-security--auditing-focus)
- [Daily Git Workflow](#-daily-git-workflow)
- [License](#-license)

---

## 🛠 Tech Stack
- **Smart Contract Language:** Solidity (^0.8.0)
- **Development Framework:** [Foundry](https://getfoundry.sh/)
  - **Forge:** Ethereum testing framework
  - **Cast:** CLI for interacting with EVM smart contracts
  - **Anvil:** Local Ethereum node for testing

---

## 📂 Project Structure
```text
├── lib/                    # Dependencies (e.g., forge-std)
├── script/                 # Deployment and interaction scripts
│   └── DeploySimpleStorage.s.sol 
├── src/                    # Smart contract source code
│   └── SimpleStorage.sol   
├── test                    # Unit and integration tests
├── foundry.toml            # Foundry configuration file
└── README.md               # Project documentation