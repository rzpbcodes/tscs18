### Towards Secure Smart Contracts
---

This repository presents the results of our research on improving the static analysis of Ethereum smart contracts. It includes:

- **Vulnerability reports** generated using multiple analysis tools on two benchmark suites:
  1. solidity-defects-and-bugs
  2. An **enhanced test suite** developed as part of this study, with additional vulnerability types

- **18 newly developed vulnerability detectors** integrated into the Slither static analysis tool to extend its detection capabilities.

### Tools Used

The following tools were used to generate and compare vulnerability reports:

- [4naly3er](https://github.com/Picodes/4naly3er) — Commit `8a9d1eb`
- [Mythril](https://github.com/ConsenSysDiligence/mythril) — Version `v0.24.8`
- [Slither](https://github.com/crytic/slither) — Version `v11.0`
- **Enhanced Slither** — This work, with 18 custom detectors implemented to cover previously unsupported vulnerabilities
