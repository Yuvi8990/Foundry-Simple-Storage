# 📦 Foundry Simple Storage

## 📖 Overview

A foundational Solidity smart contract rebuilt and deployed using Foundry's professional development toolchain. This project acts as a sandbox for exploring smart contract mechanics, demonstrating local blockchain deployment via Anvil, scripted deployments, and on-chain interaction using Cast. 

It serves as a practical transition from browser-based IDEs (like Remix) toward a production-grade development workflow, establishing the technical groundwork for deeper protocol analysis, gas optimization, and vulnerability research.

## 📑 Table of Contents

- [Tech Stack](#-tech-stack)
- [Project Structure](#-project-structure)
- [Getting Started](#-getting-started)
- [Usage & Commands](#-usage--commands)
- [Local Deployment & Interaction](#-local-deployment--interaction)
- [Security & Auditing Focus](#-security--auditing-focus)
- [Daily Git Workflow](#-daily-git-workflow)
- [License](#-license)

## 🛠 Tech Stack

* **Smart Contract Language:** Solidity (^0.8.34)
* **Development Framework:** Foundry
  * **Forge:** Ethereum testing and deployment framework
  * **Cast:** CLI for interacting with EVM smart contracts, reading state, and sending transactions
  * **Anvil:** Local Ethereum node for simulated deployment and testing
* **Environment:** VS Code / Linux (WSL) integration

## 📂 Project Structure

```text
├── lib/                    # Dependencies (e.g., forge-std)
├── script/                 # Deployment and interaction scripts
│   └── DeploySimpleStorage.s.sol 
├── src/                    # Smart contract source code
│   └── SimpleStorage.sol   
├── test/                   # Unit and integration tests (Forge)
├── foundry.toml            # Foundry configuration and compiler settings
└── README.md               # Project documentation
```

## 🚀 Getting Started

*The following instructions are for developers looking to clone and run this project locally.*

**1. Clone the repository**
```bash
git clone https://github.com/Yuvi8990/Foundry-Simple-Storage.git
cd Foundry-Simple-Storage
```

**2. Install dependencies**
```bash
forge install
```

**3. Compile the contracts**
```bash
forge build
```

## 💻 Usage & Commands

This repository leverages **Forge** scripts for deployment, ensuring that transactions are reproducible and verifiable.

**Run the test suite:**
```bash
forge test
```

**Format the codebase:**
```bash
forge fmt
```

## ⛓️ Local Deployment & Interaction

Foundry allows for rapid local testing without spending real network gas. This project uses **Anvil** as the local testnet and **Cast** to interact with the deployed state.

**1. Spin up a local Anvil node:**
```bash
anvil
```
*(Keep this terminal open. It runs a local blockchain at `http://127.0.0.1:8545` and provides 10 test accounts).*

**2. Deploy the contract via Forge Script (in a second terminal):**
```bash
forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545 --broadcast --private-key <ANVIL_PRIVATE_KEY>
```
*(Note: Replace `<ANVIL_PRIVATE_KEY>` with one of the 10 private keys Anvil generates).*

**3. Read state using Cast (Call):**
Retrieving the current state of `myFavoriteNumber` from the blockchain. This does not cost gas.
```bash
cast call <DEPLOYED_CONTRACT_ADDRESS> "retrieve()"
```

**4. Modify state using Cast (Send):**
Sending a transaction to update `myFavoriteNumber` to `123`. This action changes the blockchain state and costs gas.
```bash
cast send <DEPLOYED_CONTRACT_ADDRESS> "store(uint256)" 123 --rpc-url http://127.0.0.1:8545 --private-key <ANVIL_PRIVATE_KEY>
```

## 🛡️ Security & Auditing Focus

A major focus of this transition to professional tooling is private key management. Rather than exposing plaintext private keys in `.env` files (a common vector for exploits), this repository utilizes **Foundry's encrypted keystore feature**.

To securely import a wallet for testnet deployments:
```bash
cast wallet import <ACCOUNT_NAME> --interactive
```
Deployments can then securely reference the encrypted keystore without exposing the private key in plaintext:
```bash
forge script script/DeploySimpleStorage.s.sol --rpc-url <RPC_URL> --account <ACCOUNT_NAME> --sender <PUBLIC_ADDRESS> --broadcast
```

## 🔄 Daily Git Workflow

Standard commits were made throughout development:
```bash
git add .
git commit -m "feat: implement SimpleStorage deployment script"
git push origin main
```

## 📄 License

This project is licensed under the MIT License.
