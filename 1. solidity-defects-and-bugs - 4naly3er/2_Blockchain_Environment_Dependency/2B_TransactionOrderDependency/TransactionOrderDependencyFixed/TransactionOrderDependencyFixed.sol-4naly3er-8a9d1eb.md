# Report

| |Issue|Instances|
|-|:-|:-:|
| [M-1](#M-1) | `call()` should be used instead of `transfer()` on an `address payable` | 7 |
| [L-1](#L-1) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [L-2](#L-2) | Unsafe ERC20 operation(s) | 7 |
| [GAS-1](#GAS-1) | Comparing to a Boolean constant | 1 |
| [GAS-2](#GAS-2) | State variables should be cached in stack variables rather than re-reading them from storage | 1 |
| [GAS-3](#GAS-3) | For Operations that will not overflow, you could use unchecked | 10 |
| [GAS-4](#GAS-4) | Use Custom Errors instead of Revert Strings to save Gas | 4 |
| [GAS-5](#GAS-5) | State variables only set in the constructor should be declared `immutable` | 1 |
| [GAS-6](#GAS-6) | Use shift right/left instead of division/multiplication if possible | 5 |
| [NC-1](#NC-1) | Array indices should be referenced via `enum`s rather than via numeric literals | 7 |
| [NC-2](#NC-2) | Use `string.concat()` or `bytes.concat()` instead of `abi.encodePacked` | 2 |
| [NC-3](#NC-3) | `constant`s should be defined rather than using magic numbers | 6 |
| [NC-4](#NC-4) | Control structures do not follow the Solidity Style Guide | 1 |
| [NC-5](#NC-5) | Duplicated `require()`/`revert()` Checks Should Be Refactored To A Modifier Or Function | 2 |
| [NC-6](#NC-6) | Functions should not be longer than 50 lines | 2 |
| [NC-7](#NC-7) | Lack of checks in setters | 1 |
| [NC-8](#NC-8) | NatSpec is completely non-existent on functions that should have them | 3 |
| [NC-9](#NC-9) | Use a `modifier` instead of a `require/if` statement for a special `msg.sender` actor | 2 |
| [NC-10](#NC-10) | Consider using named mappings | 1 |
| [NC-11](#NC-11) | Contract does not follow the Solidity style guide's suggested layout ordering | 1 |
| [NC-12](#NC-12) | Internal and private variables and functions names should begin with an underscore | 5 |



### <a name="M-1"></a>[M-1] `call()` should be used instead of `transfer()` on an `address payable`
The use of the deprecated `transfer()` function for an address may make the transaction fail due to the 2300 gas stipend

*Instances (7)*:
```solidity
File: TransactionOrderDependencyFixed.sol

104:                 payable(player1).transfer(entranceFee + 1 ether);

105:                 payable(player2).transfer(entranceFee + 1 ether);

107:                 payable(player1).transfer(entranceFee / 2);

108:                 payable(player2).transfer(entranceFee + entranceFee / 2);

112:                 payable(player1).transfer(entranceFee + entranceFee / 2);

113:                 payable(player2).transfer(entranceFee / 2);

118:             payable(player1).transfer(entranceFee + entranceFee * 2);

```

### <a name="L-1"></a>[L-1] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: TransactionOrderDependencyFixed.sol

2: pragma solidity 0.8.17;

```

### <a name="L-2"></a>[L-2] Unsafe ERC20 operation(s)

*Instances (7)*:
```solidity
File: TransactionOrderDependencyFixed.sol

104:                 payable(player1).transfer(entranceFee + 1 ether);

105:                 payable(player2).transfer(entranceFee + 1 ether);

107:                 payable(player1).transfer(entranceFee / 2);

108:                 payable(player2).transfer(entranceFee + entranceFee / 2);

112:                 payable(player1).transfer(entranceFee + entranceFee / 2);

113:                 payable(player2).transfer(entranceFee / 2);

118:             payable(player1).transfer(entranceFee + entranceFee * 2);

```

### <a name="GAS-1"></a>[GAS-1] Comparing to a Boolean constant
Comparing to a constant (`true` or `false`) is a bit more expensive than directly checking the returned boolean value.

Consider using `if(directValue)` instead of `if(directValue == true)` and `if(!directValue)` instead of `if(directValue == false)`

*Instances (1)*:
```solidity
File: TransactionOrderDependencyFixed.sol

117:         if (answers[player2].deadlinePassed == true) {

```

### <a name="GAS-2"></a>[GAS-2] State variables should be cached in stack variables rather than re-reading them from storage
The instances below point to the second+ access of a state variable within a function. Caching of a state variable replaces each Gwarmaccess (100 gas) with a much cheaper stack read. Other less obvious fixes/optimizations include having local memory caches of state variable structs, or having local caches of state variable contracts/addresses.

*Saves 100 gas per instance*

*Instances (1)*:
```solidity
File: TransactionOrderDependencyFixed.sol

60:             playerCount = playerCount + 1;

```

### <a name="GAS-3"></a>[GAS-3] For Operations that will not overflow, you could use unchecked

*Instances (10)*:
```solidity
File: TransactionOrderDependencyFixed.sol

50:             playerCount = playerCount + 1;

60:             playerCount = playerCount + 1;

74:             answers[players[1]].revealDeadline = block.timestamp + 1 days;

104:                 payable(player1).transfer(entranceFee + 1 ether);

105:                 payable(player2).transfer(entranceFee + 1 ether);

107:                 payable(player1).transfer(entranceFee / 2);

108:                 payable(player2).transfer(entranceFee + entranceFee / 2);

112:                 payable(player1).transfer(entranceFee + entranceFee / 2);

113:                 payable(player2).transfer(entranceFee / 2);

118:             payable(player1).transfer(entranceFee + entranceFee * 2);

```

### <a name="GAS-4"></a>[GAS-4] Use Custom Errors instead of Revert Strings to save Gas
Custom errors are available from solidity version 0.8.4. Custom errors save [**~50 gas**](https://gist.github.com/IllIllI000/ad1bd0d29a0101b25e57c293b4b0c746) each time they're hit by [avoiding having to allocate and store the revert string](https://blog.soliditylang.org/2021/04/21/custom-errors/#errors-in-depth). Not defining the strings also save deployment gas

Additionally, custom errors can be used inside and outside of contracts (including interfaces and libraries).

Source: <https://blog.soliditylang.org/2021/04/21/custom-errors/>:

> Starting from [Solidity v0.8.4](https://github.com/ethereum/solidity/releases/tag/v0.8.4), there is a convenient and gas-efficient way to explain to users why an operation failed through the use of custom errors. Until now, you could already use strings to give more information about failures (e.g., `revert("Insufficient funds.");`), but they are rather expensive, especially when it comes to deploy cost, and it is difficult to use dynamic information in them.

Consider replacing **all revert strings** with custom errors in the solution, and particularly those that have multiple occurrences:

*Instances (4)*:
```solidity
File: TransactionOrderDependencyFixed.sol

29:         require(_fee % 2 == 0, "You must choose and even fee");

40:         require(msg.value >= entranceFee, "You must pay the register fee");

62:             revert("Players already joined");

91:             revert("You cannot reveal your option at this point");

```

### <a name="GAS-5"></a>[GAS-5] State variables only set in the constructor should be declared `immutable`
Variables only set in the constructor and never edited afterwards should be marked as immutable, as it would avoid the expensive storage-writing operation in the constructor (around **20 000 gas** per variable) and replace the expensive storage-reading operations (around **2100 gas** per reading) to a less expensive value reading (**3 gas**)

*Instances (1)*:
```solidity
File: TransactionOrderDependencyFixed.sol

30:         entranceFee = _fee;

```

### <a name="GAS-6"></a>[GAS-6] Use shift right/left instead of division/multiplication if possible
While the `DIV` / `MUL` opcode uses 5 gas, the `SHR` / `SHL` opcode only uses 3 gas. Furthermore, beware that Solidity's division operation also includes a division-by-0 prevention which is bypassed using shifting. Eventually, overflow checks are never performed for shift operations as they are done for arithmetic operations. Instead, the result is always truncated, so the calculation can be unchecked in Solidity version `0.8+`
- Use `>> 1` instead of `/ 2`
- Use `>> 2` instead of `/ 4`
- Use `<< 3` instead of `* 8`
- ...
- Use `>> 5` instead of `/ 2^5 == / 32`
- Use `<< 6` instead of `* 2^6 == * 64`

TL;DR:
- Shifting left by N is like multiplying by 2^N (Each bits to the left is an increased power of 2)
- Shifting right by N is like dividing by 2^N (Each bits to the right is a decreased power of 2)

*Saves around 2 gas + 20 for unchecked per instance*

*Instances (5)*:
```solidity
File: TransactionOrderDependencyFixed.sol

107:                 payable(player1).transfer(entranceFee / 2);

108:                 payable(player2).transfer(entranceFee + entranceFee / 2);

112:                 payable(player1).transfer(entranceFee + entranceFee / 2);

113:                 payable(player2).transfer(entranceFee / 2);

118:             payable(player1).transfer(entranceFee + entranceFee * 2);

```

### <a name="NC-1"></a>[NC-1] Array indices should be referenced via `enum`s rather than via numeric literals

*Instances (7)*:
```solidity
File: TransactionOrderDependencyFixed.sol

42:             players[0] = msg.sender;

52:             players[1] = msg.sender;

67:         if (currentState == States.SecondCommited && players[0] == msg.sender) {

74:             answers[players[1]].revealDeadline = block.timestamp + 1 days;

77:             currentState == States.FirstRevealed && players[1] == msg.sender

100:         address player1 = players[0];

101:         address player2 = players[1];

```

### <a name="NC-2"></a>[NC-2] Use `string.concat()` or `bytes.concat()` instead of `abi.encodePacked`
Solidity version 0.8.4 introduces `bytes.concat()` (vs `abi.encodePacked(<bytes>,<bytes>)`)

Solidity version 0.8.12 introduces `string.concat()` (vs `abi.encodePacked(<str>,<str>), which catches concatenation errors (in the event of a `bytes` data mixed in the concatenation)`)

*Instances (2)*:
```solidity
File: TransactionOrderDependencyFixed.sol

69:                 bytes32(abi.encodePacked(msg.sender, salt, option)) ==

81:                     bytes32(abi.encodePacked(msg.sender, salt, option)) ==

```

### <a name="NC-3"></a>[NC-3] `constant`s should be defined rather than using magic numbers
Even [assembly](https://github.com/code-423n4/2022-05-opensea-seaport/blob/9d7ce4d08bf3c3010304a0476a785c70c0e90ae7/contracts/lib/TokenTransferrer.sol#L35-L39) can benefit from using readable constants instead of hex/numeric literals

*Instances (6)*:
```solidity
File: TransactionOrderDependencyFixed.sol

29:         require(_fee % 2 == 0, "You must choose and even fee");

107:                 payable(player1).transfer(entranceFee / 2);

108:                 payable(player2).transfer(entranceFee + entranceFee / 2);

112:                 payable(player1).transfer(entranceFee + entranceFee / 2);

113:                 payable(player2).transfer(entranceFee / 2);

118:             payable(player1).transfer(entranceFee + entranceFee * 2);

```

### <a name="NC-4"></a>[NC-4] Control structures do not follow the Solidity Style Guide
See the [control structures](https://docs.soliditylang.org/en/latest/style-guide.html#control-structures) section of the Solidity Style Guide

*Instances (1)*:
```solidity
File: TransactionOrderDependencyFixed.sol

76:         } else if (

```

### <a name="NC-5"></a>[NC-5] Duplicated `require()`/`revert()` Checks Should Be Refactored To A Modifier Or Function

*Instances (2)*:
```solidity
File: TransactionOrderDependencyFixed.sol

68:             require(

80:                 require(

```

### <a name="NC-6"></a>[NC-6] Functions should not be longer than 50 lines
Overly complex code can make understanding functionality more difficult, try to further modularize your code to ensure readability 

*Instances (2)*:
```solidity
File: TransactionOrderDependencyFixed.sol

39:     function commit(bytes32 solution) external payable {

66:     function reveal(bytes32 salt, Options option) external {

```

### <a name="NC-7"></a>[NC-7] Lack of checks in setters
Be it sanity checks (like checks against `0`-values) or initial setting checks: it's best for Setter functions to have them

*Instances (1)*:
```solidity
File: TransactionOrderDependencyFixed.sol

124:     function resetState() private {
             currentState = States.GameStarted;
             playerCount = 0;

```

### <a name="NC-8"></a>[NC-8] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (3)*:
```solidity
File: TransactionOrderDependencyFixed.sol

39:     function commit(bytes32 solution) external payable {

66:     function reveal(bytes32 salt, Options option) external {

95:     function checkWinner() external {

```

### <a name="NC-9"></a>[NC-9] Use a `modifier` instead of a `require/if` statement for a special `msg.sender` actor
If a function is supposed to be access-controlled, a `modifier` should be used instead of a `require/if` statement for more readability.

*Instances (2)*:
```solidity
File: TransactionOrderDependencyFixed.sol

67:         if (currentState == States.SecondCommited && players[0] == msg.sender) {

79:             if (block.timestamp > answers[msg.sender].revealDeadline) {

```

### <a name="NC-10"></a>[NC-10] Consider using named mappings
Consider moving to solidity version 0.8.18 or later, and using [named mappings](https://ethereum.stackexchange.com/questions/51629/how-to-name-the-arguments-in-mapping/145555#145555) to make it easier to understand the purpose of each mapping

*Instances (1)*:
```solidity
File: TransactionOrderDependencyFixed.sol

35:     mapping(address => CommitedAnswer) answers;

```

### <a name="NC-11"></a>[NC-11] Contract does not follow the Solidity style guide's suggested layout ordering
The [style guide](https://docs.soliditylang.org/en/v0.8.16/style-guide.html#order-of-layout) says that, within a contract, the ordering should be:

1) Type declarations
2) State variables
3) Events
4) Modifiers
5) Functions

However, the contract(s) below do not follow this ordering

*Instances (1)*:
```solidity
File: TransactionOrderDependencyFixed.sol

1: 
   Current order:
   StructDefinition.CommitedAnswer
   EnumDefinition.Options
   EnumDefinition.States
   FunctionDefinition.constructor
   VariableDeclaration.entranceFee
   VariableDeclaration.currentState
   VariableDeclaration.answers
   VariableDeclaration.players
   VariableDeclaration.playerCount
   FunctionDefinition.commit
   FunctionDefinition.reveal
   FunctionDefinition.checkWinner
   FunctionDefinition.resetState
   
   Suggested order:
   VariableDeclaration.entranceFee
   VariableDeclaration.currentState
   VariableDeclaration.answers
   VariableDeclaration.players
   VariableDeclaration.playerCount
   EnumDefinition.Options
   EnumDefinition.States
   StructDefinition.CommitedAnswer
   FunctionDefinition.constructor
   FunctionDefinition.commit
   FunctionDefinition.reveal
   FunctionDefinition.checkWinner
   FunctionDefinition.resetState

```

### <a name="NC-12"></a>[NC-12] Internal and private variables and functions names should begin with an underscore
According to the Solidity Style Guide, Non-`external` variable and function names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables)

*Instances (5)*:
```solidity
File: TransactionOrderDependencyFixed.sol

33:     uint256 entranceFee;

35:     mapping(address => CommitedAnswer) answers;

36:     address[2] players;

37:     uint256 playerCount;

124:     function resetState() private {

```

