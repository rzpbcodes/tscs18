# Report

| |Issue|Instances|
|-|:-|:-:|
| [L-1](#L-1) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [GAS-1](#GAS-1) | For Operations that will not overflow, you could use unchecked | 2 |
| [NC-1](#NC-1) | Functions should not be longer than 50 lines | 1 |
| [NC-2](#NC-2) | Change uint to uint256 | 2 |
| [NC-3](#NC-3) | `public` functions not called by the contract should be declared `external` instead | 1 |
| [NC-4](#NC-4) | Variables need not be initialized to zero | 1 |



### <a name="L-1"></a>[L-1] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: UnrestrictedTypeRestrictedConditionFixed.sol

2: pragma solidity 0.8.17;

```

### <a name="GAS-1"></a>[GAS-1] For Operations that will not overflow, you could use unchecked

*Instances (2)*:
```solidity
File: UnrestrictedTypeRestrictedConditionFixed.sol

11:         while ((y + 1) * (y + 1) <= x) {

12:             y = y + 1;

```

### <a name="NC-1"></a>[NC-1] Functions should not be longer than 50 lines
Overly complex code can make understanding functionality more difficult, try to further modularize your code to ensure readability 

*Instances (1)*:
```solidity
File: UnrestrictedTypeRestrictedConditionFixed.sol

6:     function squareRoot(uint x) public pure returns (uint) {

```

### <a name="NC-2"></a>[NC-2] Change uint to uint256
Throughout the code base, some variables are declared as `uint`. To favor explicitness, consider changing all instances of `uint` to `uint256`

*Instances (2)*:
```solidity
File: UnrestrictedTypeRestrictedConditionFixed.sol

6:     function squareRoot(uint x) public pure returns (uint) {

10:         uint y = 0;

```

### <a name="NC-3"></a>[NC-3] `public` functions not called by the contract should be declared `external` instead

*Instances (1)*:
```solidity
File: UnrestrictedTypeRestrictedConditionFixed.sol

6:     function squareRoot(uint x) public pure returns (uint) {

```

### <a name="NC-4"></a>[NC-4] Variables need not be initialized to zero
The default value for variables is zero, so initializing them to zero is superfluous.

*Instances (1)*:
```solidity
File: UnrestrictedTypeRestrictedConditionFixed.sol

10:         uint y = 0;

```

