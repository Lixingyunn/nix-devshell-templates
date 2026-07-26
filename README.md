# ❄️ Nix DevShell Templates (`@Lixingyunn`)

[![Nix Flakes](https://img.shields.io/badge/Nix_Flakes-Enabled-blue?style=for-the-badge&logo=nixos&logoColor=white)](https://nixos.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

A curated collection of production-grade, reproducible **Nix Flake** development shell templates (`devShells`) for Python, Rust, Kotlin, Go, and Node.js environments.

---

## 🚀 Quick Start

### 1. Direct Execution via Nix Flakes
Enter any development environment instantly without installing global compilers or interpreters:

```bash
# Enter Python DevShell
nix develop github:Lixingyunn/nix-devshell-templates#python

# Enter Rust DevShell
nix develop github:Lixingyunn/nix-devshell-templates#rust

# Enter Kotlin / JVM DevShell
nix develop github:Lixingyunn/nix-devshell-templates#kotlin

# Enter Go DevShell
nix develop github:Lixingyunn/nix-devshell-templates#go
```

### 2. Initialize in Your Project Directory

```bash
# Initialize Python Template
nix flake init -t github:Lixingyunn/nix-devshell-templates#python

# Initialize Rust Template
nix flake init -t github:Lixingyunn/nix-devshell-templates#rust
```

---

## 🛠️ Included Environments

| Environment | Key Packages & Toolchains |
| :--- | :--- |
| **Python** | Python 3, Pip, Virtualenv, Ruff, Black |
| **Rust** | Rustc, Cargo, Rustfmt, Clippy, Rust-Analyzer |
| **Kotlin** | OpenJDK 17, Kotlin, Gradle, Ktlint |
| **Go** | Go, Gopls, Golangci-lint |

---

## 🔐 Security & Signing

All commits in this repository are **100% GPG signed** with key `95217AF28DBCD5E3`.

---

## 📄 License
Released under the [MIT License](LICENSE).
