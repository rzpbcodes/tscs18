# Report

| |Issue|Instances|
|-|:-|:-:|
| [M-1](#M-1) | `call()` should be used instead of `transfer()` on an `address payable` | 1 |
| [L-1](#L-1) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [L-2](#L-2) | Unsafe ERC20 operation(s) | 1 |
| [GAS-1](#GAS-1) | Use Custom Errors instead of Revert Strings to save Gas | 1 |
| [NC-1](#NC-1) | NatSpec is completely non-existent on functions that should have them | 2 |
| [NC-2](#NC-2) | Use a `modifier` instead of a `require/if` statement for a special `msg.sender` actor | 1 |
| [NC-3](#NC-3) | Consider using named mappings | 1 |
| [NC-4](#NC-4) | Internal and private variables and functions names should begin with an underscore | 1 |



### <a name="M-1"></a>[M-1] `call()` should be used instead of `transfer()` on an `address payable`
The use of the deprecated `transfer()` function for an address may make the transaction fail due to the 2300 gas stipend

*Instances (1)*:
```solidity
File: NoPragmaFixed.sol

15:         payable(msg.sender).transfer(toSend);

```

### <a name="L-1"></a>[L-1] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: NoPragmaFixed.sol

2: pragma solidity 0.8.17;

```

### <a name="L-2"></a>[L-2] Unsafe ERC20 operation(s)

*Instances (1)*:
```solidity
File: NoPragmaFixed.sol

15:         payable(msg.sender).transfer(toSend);

```

### <a name="GAS-1"></a>[GAS-1] Use Custom Errors instead of Revert Strings to save Gas
Custom errors are available from solidity version 0.8.4. Custom errors save [**~50 gas**](https://gist.github.com/IllIllI000/ad1bd0d29a0101b25e57c293b4b0c746) each time they're hit by [avoiding having to allocate and store the revert string](https://blog.soliditylang.org/2021/04/21/custom-errors/#errors-in-depth). Not defining the strings also save deployment gas

Additionally, custom errors can be used inside and outside of contracts (including interfaces and libraries).

Source: <https://blog.soliditylang.org/2021/04/21/custom-errors/>:

> Starting from [Solidity v0.8.4](https://github.com/ethereum/solidity/releases/tag/v0.8.4), there is a convenient and gas-efficient way to explain to users why an operation failed through the use of custom errors. Until now, you could already use strings to give more information about failures (e.g., `revert("Insufficient funds.");`), but they are rather expensive, especially when it comes to deploy cost, and it is difficult to use dynamic information in them.

Consider replacing **all revert strings** with custom errors in the solution, and particularly those that have multiple occurrences:

*Instances (1)*:
```solidity
File: NoPragmaFixed.sol

13:         require(balance[msg.sender] != 0, "No balance found");

```

### <a name="NC-1"></a>[NC-1] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (2)*:
```solidity
File: NoPragmaFixed.sol

8:     function deposit() external payable {

12:     function withdraw() external {

```

### <a name="NC-2"></a>[NC-2] Use a `modifier` instead of a `require/if` statement for a special `msg.sender` actor
If a function is supposed to be access-controlled, a `modifier` should be used instead of a `require/if` statement for more readability.

*Instances (1)*:
```solidity
File: NoPragmaFixed.sol

13:         require(balance[msg.sender] != 0, "No balance found");

```

### <a name="NC-3"></a>[NC-3] Consider using named mappings
Consider moving to solidity version 0.8.18 or later, and using [named mappings](https://ethereum.stackexchange.com/questions/51629/how-to-name-the-arguments-in-mapping/145555#145555) to make it easier to understand the purpose of each mapping

*Instances (1)*:
```solidity
File: NoPragmaFixed.sol

6:     mapping(address => uint256) private balance;

```

### <a name="NC-4"></a>[NC-4] Internal and private variables and functions names should begin with an underscore
According to the Solidity Style Guide, Non-`external` variable and function names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables)

*Instances (1)*:
```solidity
File: NoPragmaFixed.sol

6:     mapping(address => uint256) private balance;

```

