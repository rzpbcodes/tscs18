# Report

| |Issue|Instances|
|-|:-|:-:|
| [L-1](#L-1) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [NC-1](#NC-1) | Functions should not be longer than 50 lines | 1 |
| [NC-2](#NC-2) | NatSpec is completely non-existent on functions that should have them | 2 |
| [NC-3](#NC-3) | Use a `modifier` instead of a `require/if` statement for a special `msg.sender` actor | 1 |
| [NC-4](#NC-4) | Consider using named mappings | 1 |
| [NC-5](#NC-5) | `require()` / `revert()` statements should have descriptive reason strings | 3 |



### <a name="L-1"></a>[L-1] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: ReasonString.sol

2: pragma solidity 0.8.17;

```

### <a name="NC-1"></a>[NC-1] Functions should not be longer than 50 lines
Overly complex code can make understanding functionality more difficult, try to further modularize your code to ensure readability 

*Instances (1)*:
```solidity
File: ReasonString.sol

8:     function deposit(uint256 amount) external payable {

```

### <a name="NC-2"></a>[NC-2] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (2)*:
```solidity
File: ReasonString.sol

8:     function deposit(uint256 amount) external payable {

14:     function withdraw() external {

```

### <a name="NC-3"></a>[NC-3] Use a `modifier` instead of a `require/if` statement for a special `msg.sender` actor
If a function is supposed to be access-controlled, a `modifier` should be used instead of a `require/if` statement for more readability.

*Instances (1)*:
```solidity
File: ReasonString.sol

16:         require(_balance[msg.sender] != 0);

```

### <a name="NC-4"></a>[NC-4] Consider using named mappings
Consider moving to solidity version 0.8.18 or later, and using [named mappings](https://ethereum.stackexchange.com/questions/51629/how-to-name-the-arguments-in-mapping/145555#145555) to make it easier to understand the purpose of each mapping

*Instances (1)*:
```solidity
File: ReasonString.sol

6:     mapping(address => uint256) private _balance;

```

### <a name="NC-5"></a>[NC-5] `require()` / `revert()` statements should have descriptive reason strings

*Instances (3)*:
```solidity
File: ReasonString.sol

9:         require(msg.value == amount);

16:         require(_balance[msg.sender] != 0);

19:         require(sent);

```

