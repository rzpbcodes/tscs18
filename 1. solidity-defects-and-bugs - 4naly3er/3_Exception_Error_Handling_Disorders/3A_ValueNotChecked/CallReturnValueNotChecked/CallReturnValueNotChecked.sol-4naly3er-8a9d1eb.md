# Report

| |Issue|Instances|
|-|:-|:-:|
| [L-1](#L-1) | External call recipient may consume all transaction gas | 1 |
| [L-2](#L-2) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [NC-1](#NC-1) | Change uint to uint256 | 1 |
| [NC-2](#NC-2) | `mapping` definitions do not follow the Solidity Style Guide | 1 |
| [NC-3](#NC-3) | NatSpec is completely non-existent on functions that should have them | 2 |
| [NC-4](#NC-4) | Internal and private variables and functions names should begin with an underscore | 1 |
| [NC-5](#NC-5) | `public` functions not called by the contract should be declared `external` instead | 2 |



### <a name="L-1"></a>[L-1] External call recipient may consume all transaction gas
There is no limit specified on the amount of gas used, so the recipient can use up all of the transaction's gas, causing it to revert. Use `addr.call{gas: <amount>}("")` or [this](https://github.com/nomad-xyz/ExcessivelySafeCall) library instead.

*Instances (1)*:
```solidity
File: CallReturnValueNotChecked.sol

13:         payable(msg.sender).call{value: amount}("");

```

### <a name="L-2"></a>[L-2] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: CallReturnValueNotChecked.sol

2: pragma solidity 0.8.17;

```

### <a name="NC-1"></a>[NC-1] Change uint to uint256
Throughout the code base, some variables are declared as `uint`. To favor explicitness, consider changing all instances of `uint` to `uint256`

*Instances (1)*:
```solidity
File: CallReturnValueNotChecked.sol

12:         uint amount = balanceOf[msg.sender];

```

### <a name="NC-2"></a>[NC-2] `mapping` definitions do not follow the Solidity Style Guide
See the [mappings](https://docs.soliditylang.org/en/latest/style-guide.html#mappings) section of the Solidity Style Guide

*Instances (1)*:
```solidity
File: CallReturnValueNotChecked.sol

5:     mapping (address=>uint) balanceOf;

```

### <a name="NC-3"></a>[NC-3] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (2)*:
```solidity
File: CallReturnValueNotChecked.sol

7:     function deposit() public payable {

11:     function withdraw() public {

```

### <a name="NC-4"></a>[NC-4] Internal and private variables and functions names should begin with an underscore
According to the Solidity Style Guide, Non-`external` variable and function names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables)

*Instances (1)*:
```solidity
File: CallReturnValueNotChecked.sol

5:     mapping (address=>uint) balanceOf;

```

### <a name="NC-5"></a>[NC-5] `public` functions not called by the contract should be declared `external` instead

*Instances (2)*:
```solidity
File: CallReturnValueNotChecked.sol

7:     function deposit() public payable {

11:     function withdraw() public {

```

