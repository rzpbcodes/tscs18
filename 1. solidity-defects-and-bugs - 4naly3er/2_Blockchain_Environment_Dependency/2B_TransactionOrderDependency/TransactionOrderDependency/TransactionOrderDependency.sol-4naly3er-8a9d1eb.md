# Report

| |Issue|Instances|
|-|:-|:-:|
| [M-1](#M-1) | `call()` should be used instead of `transfer()` on an `address payable` | 6 |
| [L-1](#L-1) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [L-2](#L-2) | Unsafe ERC20 operation(s) | 6 |
| [GAS-1](#GAS-1) | State variables should be cached in stack variables rather than re-reading them from storage | 1 |
| [GAS-2](#GAS-2) | For Operations that will not overflow, you could use unchecked | 8 |
| [GAS-3](#GAS-3) | Use Custom Errors instead of Revert Strings to save Gas | 3 |
| [GAS-4](#GAS-4) | State variables only set in the constructor should be declared `immutable` | 1 |
| [GAS-5](#GAS-5) | Use shift right/left instead of division/multiplication if possible | 4 |
| [NC-1](#NC-1) | Array indices should be referenced via `enum`s rather than via numeric literals | 4 |
| [NC-2](#NC-2) | `constant`s should be defined rather than using magic numbers | 5 |
| [NC-3](#NC-3) | Functions should not be longer than 50 lines | 1 |
| [NC-4](#NC-4) | Lack of checks in setters | 1 |
| [NC-5](#NC-5) | NatSpec is completely non-existent on functions that should have them | 2 |
| [NC-6](#NC-6) | Consider using named mappings | 1 |
| [NC-7](#NC-7) | Contract does not follow the Solidity style guide's suggested layout ordering | 1 |
| [NC-8](#NC-8) | Internal and private variables and functions names should begin with an underscore | 5 |



### <a name="M-1"></a>[M-1] `call()` should be used instead of `transfer()` on an `address payable`
The use of the deprecated `transfer()` function for an address may make the transaction fail due to the 2300 gas stipend

*Instances (6)*:
```solidity
File: TransactionOrderDependency.sol

56:                 payable(player1).transfer(entranceFee + 1 ether);

57:                 payable(player2).transfer(entranceFee + 1 ether);

59:                 payable(player1).transfer(entranceFee / 2);

60:                 payable(player2).transfer(entranceFee + entranceFee / 2);

64:                 payable(player1).transfer(entranceFee + entranceFee / 2);

65:                 payable(player2).transfer(entranceFee / 2);

```

### <a name="L-1"></a>[L-1] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: TransactionOrderDependency.sol

2: pragma solidity 0.8.17;

```

### <a name="L-2"></a>[L-2] Unsafe ERC20 operation(s)

*Instances (6)*:
```solidity
File: TransactionOrderDependency.sol

56:                 payable(player1).transfer(entranceFee + 1 ether);

57:                 payable(player2).transfer(entranceFee + 1 ether);

59:                 payable(player1).transfer(entranceFee / 2);

60:                 payable(player2).transfer(entranceFee + entranceFee / 2);

64:                 payable(player1).transfer(entranceFee + entranceFee / 2);

65:                 payable(player2).transfer(entranceFee / 2);

```

### <a name="GAS-1"></a>[GAS-1] State variables should be cached in stack variables rather than re-reading them from storage
The instances below point to the second+ access of a state variable within a function. Caching of a state variable replaces each Gwarmaccess (100 gas) with a much cheaper stack read. Other less obvious fixes/optimizations include having local memory caches of state variable structs, or having local caches of state variable contracts/addresses.

*Saves 100 gas per instance*

*Instances (1)*:
```solidity
File: TransactionOrderDependency.sol

41:             playerCount = playerCount + 1;

```

### <a name="GAS-2"></a>[GAS-2] For Operations that will not overflow, you could use unchecked

*Instances (8)*:
```solidity
File: TransactionOrderDependency.sol

36:             playerCount = playerCount + 1;

41:             playerCount = playerCount + 1;

56:                 payable(player1).transfer(entranceFee + 1 ether);

57:                 payable(player2).transfer(entranceFee + 1 ether);

59:                 payable(player1).transfer(entranceFee / 2);

60:                 payable(player2).transfer(entranceFee + entranceFee / 2);

64:                 payable(player1).transfer(entranceFee + entranceFee / 2);

65:                 payable(player2).transfer(entranceFee / 2);

```

### <a name="GAS-3"></a>[GAS-3] Use Custom Errors instead of Revert Strings to save Gas
Custom errors are available from solidity version 0.8.4. Custom errors save [**~50 gas**](https://gist.github.com/IllIllI000/ad1bd0d29a0101b25e57c293b4b0c746) each time they're hit by [avoiding having to allocate and store the revert string](https://blog.soliditylang.org/2021/04/21/custom-errors/#errors-in-depth). Not defining the strings also save deployment gas

Additionally, custom errors can be used inside and outside of contracts (including interfaces and libraries).

Source: <https://blog.soliditylang.org/2021/04/21/custom-errors/>:

> Starting from [Solidity v0.8.4](https://github.com/ethereum/solidity/releases/tag/v0.8.4), there is a convenient and gas-efficient way to explain to users why an operation failed through the use of custom errors. Until now, you could already use strings to give more information about failures (e.g., `revert("Insufficient funds.");`), but they are rather expensive, especially when it comes to deploy cost, and it is difficult to use dynamic information in them.

Consider replacing **all revert strings** with custom errors in the solution, and particularly those that have multiple occurrences:

*Instances (3)*:
```solidity
File: TransactionOrderDependency.sol

26:         require(_fee % 2 == 0, "You must choose and even fee");

31:         require(msg.value >= entranceFee, "You must pay the register fee");

43:             revert("Players already joined");

```

### <a name="GAS-4"></a>[GAS-4] State variables only set in the constructor should be declared `immutable`
Variables only set in the constructor and never edited afterwards should be marked as immutable, as it would avoid the expensive storage-writing operation in the constructor (around **20 000 gas** per variable) and replace the expensive storage-reading operations (around **2100 gas** per reading) to a less expensive value reading (**3 gas**)

*Instances (1)*:
```solidity
File: TransactionOrderDependency.sol

27:         entranceFee = _fee;

```

### <a name="GAS-5"></a>[GAS-5] Use shift right/left instead of division/multiplication if possible
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

*Instances (4)*:
```solidity
File: TransactionOrderDependency.sol

59:                 payable(player1).transfer(entranceFee / 2);

60:                 payable(player2).transfer(entranceFee + entranceFee / 2);

64:                 payable(player1).transfer(entranceFee + entranceFee / 2);

65:                 payable(player2).transfer(entranceFee / 2);

```

### <a name="NC-1"></a>[NC-1] Array indices should be referenced via `enum`s rather than via numeric literals

*Instances (4)*:
```solidity
File: TransactionOrderDependency.sol

33:             players[0] = msg.sender;

38:             players[1] = msg.sender;

52:         address player1 = players[0];

53:         address player2 = players[1];

```

### <a name="NC-2"></a>[NC-2] `constant`s should be defined rather than using magic numbers
Even [assembly](https://github.com/code-423n4/2022-05-opensea-seaport/blob/9d7ce4d08bf3c3010304a0476a785c70c0e90ae7/contracts/lib/TokenTransferrer.sol#L35-L39) can benefit from using readable constants instead of hex/numeric literals

*Instances (5)*:
```solidity
File: TransactionOrderDependency.sol

26:         require(_fee % 2 == 0, "You must choose and even fee");

59:                 payable(player1).transfer(entranceFee / 2);

60:                 payable(player2).transfer(entranceFee + entranceFee / 2);

64:                 payable(player1).transfer(entranceFee + entranceFee / 2);

65:                 payable(player2).transfer(entranceFee / 2);

```

### <a name="NC-3"></a>[NC-3] Functions should not be longer than 50 lines
Overly complex code can make understanding functionality more difficult, try to further modularize your code to ensure readability 

*Instances (1)*:
```solidity
File: TransactionOrderDependency.sol

30:     function commit(Options option) external payable {

```

### <a name="NC-4"></a>[NC-4] Lack of checks in setters
Be it sanity checks (like checks against `0`-values) or initial setting checks: it's best for Setter functions to have them

*Instances (1)*:
```solidity
File: TransactionOrderDependency.sol

72:     function resetState() private {
            currentState = States.GameStarted;
            playerCount = 0;

```

### <a name="NC-5"></a>[NC-5] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (2)*:
```solidity
File: TransactionOrderDependency.sol

30:     function commit(Options option) external payable {

47:     function checkWinner() external {

```

### <a name="NC-6"></a>[NC-6] Consider using named mappings
Consider moving to solidity version 0.8.18 or later, and using [named mappings](https://ethereum.stackexchange.com/questions/51629/how-to-name-the-arguments-in-mapping/145555#145555) to make it easier to understand the purpose of each mapping

*Instances (1)*:
```solidity
File: TransactionOrderDependency.sol

21:     mapping(address => Options) answers;

```

### <a name="NC-7"></a>[NC-7] Contract does not follow the Solidity style guide's suggested layout ordering
The [style guide](https://docs.soliditylang.org/en/v0.8.16/style-guide.html#order-of-layout) says that, within a contract, the ordering should be:

1) Type declarations
2) State variables
3) Events
4) Modifiers
5) Functions

However, the contract(s) below do not follow this ordering

*Instances (1)*:
```solidity
File: TransactionOrderDependency.sol

1: 
   Current order:
   EnumDefinition.Options
   EnumDefinition.States
   VariableDeclaration.entranceFee
   VariableDeclaration.currentState
   VariableDeclaration.answers
   VariableDeclaration.players
   VariableDeclaration.playerCount
   FunctionDefinition.constructor
   FunctionDefinition.commit
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
   FunctionDefinition.constructor
   FunctionDefinition.commit
   FunctionDefinition.checkWinner
   FunctionDefinition.resetState

```

### <a name="NC-8"></a>[NC-8] Internal and private variables and functions names should begin with an underscore
According to the Solidity Style Guide, Non-`external` variable and function names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables)

*Instances (5)*:
```solidity
File: TransactionOrderDependency.sol

19:     uint256 entranceFee;

21:     mapping(address => Options) answers;

22:     address[2] players;

23:     uint256 playerCount;

72:     function resetState() private {

```

