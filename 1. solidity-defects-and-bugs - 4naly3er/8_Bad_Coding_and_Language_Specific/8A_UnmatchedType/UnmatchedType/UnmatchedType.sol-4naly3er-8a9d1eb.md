# Report

| |Issue|Instances|
|-|:-|:-:|
| [L-1](#L-1) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [GAS-1](#GAS-1) | For Operations that will not overflow, you could use unchecked | 1 |
| [NC-1](#NC-1) | NatSpec is completely non-existent on functions that should have them | 1 |
| [NC-2](#NC-2) | Consider using named mappings | 2 |
| [NC-3](#NC-3) | Contract does not follow the Solidity style guide's suggested layout ordering | 1 |



### <a name="L-1"></a>[L-1] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: UnmatchedType.sol

2: pragma solidity 0.8.17;

```

### <a name="GAS-1"></a>[GAS-1] For Operations that will not overflow, you could use unchecked

*Instances (1)*:
```solidity
File: UnmatchedType.sol

17:         _votesCount[Options(option)]++;

```

### <a name="NC-1"></a>[NC-1] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (1)*:
```solidity
File: UnmatchedType.sol

15:     function vote(uint256 option) external {

```

### <a name="NC-2"></a>[NC-2] Consider using named mappings
Consider moving to solidity version 0.8.18 or later, and using [named mappings](https://ethereum.stackexchange.com/questions/51629/how-to-name-the-arguments-in-mapping/145555#145555) to make it easier to understand the purpose of each mapping

*Instances (2)*:
```solidity
File: UnmatchedType.sol

12:     mapping(address => Options) private _votes;

13:     mapping(Options => uint256) private _votesCount;

```

### <a name="NC-3"></a>[NC-3] Contract does not follow the Solidity style guide's suggested layout ordering
The [style guide](https://docs.soliditylang.org/en/v0.8.16/style-guide.html#order-of-layout) says that, within a contract, the ordering should be:

1) Type declarations
2) State variables
3) Events
4) Modifiers
5) Functions

However, the contract(s) below do not follow this ordering

*Instances (1)*:
```solidity
File: UnmatchedType.sol

1: 
   Current order:
   EnumDefinition.Options
   VariableDeclaration._votes
   VariableDeclaration._votesCount
   FunctionDefinition.vote
   FunctionDefinition.getStatisticsForOption
   
   Suggested order:
   VariableDeclaration._votes
   VariableDeclaration._votesCount
   EnumDefinition.Options
   FunctionDefinition.vote
   FunctionDefinition.getStatisticsForOption

```

