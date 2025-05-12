# Report

| |Issue|Instances|
|-|:-|:-:|
| [M-1](#M-1) | `call()` should be used instead of `transfer()` on an `address payable` | 2 |
| [L-1](#L-1) | Division by zero not prevented | 1 |
| [L-2](#L-2) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [L-3](#L-3) | Unsafe ERC20 operation(s) | 2 |
| [GAS-1](#GAS-1) | For Operations that will not overflow, you could use unchecked | 4 |
| [GAS-2](#GAS-2) | `++i` costs less gas compared to `i++` or `i += 1` (same for `--i` vs `i--` or `i -= 1`) | 3 |
| [GAS-3](#GAS-3) | Use != 0 instead of > 0 for unsigned integer comparison | 1 |
| [NC-1](#NC-1) | Control structures do not follow the Solidity Style Guide | 2 |
| [NC-2](#NC-2) | Event missing indexed field | 3 |
| [NC-3](#NC-3) | Functions should not be longer than 50 lines | 1 |
| [NC-4](#NC-4) | NatSpec is completely non-existent on functions that should have them | 3 |
| [NC-5](#NC-5) | Use a `modifier` instead of a `require/if` statement for a special `msg.sender` actor | 1 |
| [NC-6](#NC-6) | Consider using named mappings | 1 |
| [NC-7](#NC-7) | Contract does not follow the Solidity style guide's suggested layout ordering | 1 |
| [NC-8](#NC-8) | Internal and private variables and functions names should begin with an underscore | 1 |
| [NC-9](#NC-9) | Event is missing `indexed` fields | 3 |
| [NC-10](#NC-10) | Variables need not be initialized to zero | 3 |



### <a name="M-1"></a>[M-1] `call()` should be used instead of `transfer()` on an `address payable`
The use of the deprecated `transfer()` function for an address may make the transaction fail due to the 2300 gas stipend

*Instances (2)*:
```solidity
File: InadequateOrIncorrectLoggingOrDocumenation.sol

62:                 payable(msg.sender).transfer(

81:                 payable(msg.sender).transfer(

```

### <a name="L-1"></a>[L-1] Division by zero not prevented
The divisions below take an input parameter which does not have any zero-value checks, which may lead to the functions reverting when zero is passed.

*Instances (1)*:
```solidity
File: InadequateOrIncorrectLoggingOrDocumenation.sol

28:         uint256 share = msg.value / recepients.length;

```

### <a name="L-2"></a>[L-2] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: InadequateOrIncorrectLoggingOrDocumenation.sol

2: pragma solidity 0.8.17;

```

### <a name="L-3"></a>[L-3] Unsafe ERC20 operation(s)

*Instances (2)*:
```solidity
File: InadequateOrIncorrectLoggingOrDocumenation.sol

62:                 payable(msg.sender).transfer(

81:                 payable(msg.sender).transfer(

```

### <a name="GAS-1"></a>[GAS-1] For Operations that will not overflow, you could use unchecked

*Instances (4)*:
```solidity
File: InadequateOrIncorrectLoggingOrDocumenation.sol

28:         uint256 share = msg.value / recepients.length;

32:             recepientIndex++

54:             transactionIndex++

75:             transactionIndex++

```

### <a name="GAS-2"></a>[GAS-2] `++i` costs less gas compared to `i++` or `i += 1` (same for `--i` vs `i--` or `i -= 1`)
Pre-increments and pre-decrements are cheaper.

For a `uint256 i` variable, the following is true with the Optimizer enabled at 10k:

**Increment:**

- `i += 1` is the most expensive form
- `i++` costs 6 gas less than `i += 1`
- `++i` costs 5 gas less than `i++` (11 gas less than `i += 1`)

**Decrement:**

- `i -= 1` is the most expensive form
- `i--` costs 11 gas less than `i -= 1`
- `--i` costs 5 gas less than `i--` (16 gas less than `i -= 1`)

Note that post-increments (or post-decrements) return the old value before incrementing or decrementing, hence the name *post-increment*:

```solidity
uint i = 1;  
uint j = 2;
require(j == i++, "This will be false as i is incremented after the comparison");
```
  
However, pre-increments (or pre-decrements) return the new value:
  
```solidity
uint i = 1;  
uint j = 2;
require(j == ++i, "This will be true as i is incremented before the comparison");
```

In the pre-increment case, the compiler has to create a temporary variable (when used) for returning `1` instead of `2`.

Consider using pre-increments and pre-decrements where they are relevant (meaning: not where post-increments/decrements logic are relevant).

*Saves 5 gas per instance*

*Instances (3)*:
```solidity
File: InadequateOrIncorrectLoggingOrDocumenation.sol

32:             recepientIndex++

54:             transactionIndex++

75:             transactionIndex++

```

### <a name="GAS-3"></a>[GAS-3] Use != 0 instead of > 0 for unsigned integer comparison

*Instances (1)*:
```solidity
File: InadequateOrIncorrectLoggingOrDocumenation.sol

25:             msg.value > 0,

```

### <a name="NC-1"></a>[NC-1] Control structures do not follow the Solidity Style Guide
See the [control structures](https://docs.soliditylang.org/en/latest/style-guide.html#control-structures) section of the Solidity Style Guide

*Instances (2)*:
```solidity
File: InadequateOrIncorrectLoggingOrDocumenation.sol

22:             "You must specify two or more recepients"

77:             if (

```

### <a name="NC-2"></a>[NC-2] Event missing indexed field
Index event fields make the field more quickly accessible [to off-chain tools](https://ethereum.stackexchange.com/questions/40396/can-somebody-please-explain-the-concept-of-event-indexing) that parse events. This is especially useful when it comes to filtering based on an address. However, note that each index field costs extra gas during emission, so it's not necessarily best to index the maximum allowed per event (three fields). Where applicable, each `event` should use three `indexed` fields if there are three or more fields, and gas usage is not particularly of concern for the events in question. If there are fewer than three applicable fields, all of the applicable fields should be indexed.

*Instances (3)*:
```solidity
File: InadequateOrIncorrectLoggingOrDocumenation.sol

6:     event Received(address to, address from, uint256 amount);

16:     event TransactionRegistered(address from, address to, uint256 amount);

17:     event TransactionRevoked(address from, address to, uint256 amount);

```

### <a name="NC-3"></a>[NC-3] Functions should not be longer than 50 lines
Overly complex code can make understanding functionality more difficult, try to further modularize your code to ensure readability 

*Instances (1)*:
```solidity
File: InadequateOrIncorrectLoggingOrDocumenation.sol

19:     function Split(address[] calldata recepients) external payable {

```

### <a name="NC-4"></a>[NC-4] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (3)*:
```solidity
File: InadequateOrIncorrectLoggingOrDocumenation.sol

19:     function Split(address[] calldata recepients) external payable {

50:     function withdraw() external {

71:     function refund(address recepient) external {

```

### <a name="NC-5"></a>[NC-5] Use a `modifier` instead of a `require/if` statement for a special `msg.sender` actor
If a function is supposed to be access-controlled, a `modifier` should be used instead of a `require/if` statement for more readability.

*Instances (1)*:
```solidity
File: InadequateOrIncorrectLoggingOrDocumenation.sol

56:             if (_recordedTransactions[transactionIndex].to == msg.sender) {

```

### <a name="NC-6"></a>[NC-6] Consider using named mappings
Consider moving to solidity version 0.8.18 or later, and using [named mappings](https://ethereum.stackexchange.com/questions/51629/how-to-name-the-arguments-in-mapping/145555#145555) to make it easier to understand the purpose of each mapping

*Instances (1)*:
```solidity
File: InadequateOrIncorrectLoggingOrDocumenation.sol

15:     mapping(address => uint256) receivers;

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
File: InadequateOrIncorrectLoggingOrDocumenation.sol

1: 
   Current order:
   EventDefinition.Received
   StructDefinition.Transaction
   VariableDeclaration._recordedTransactions
   VariableDeclaration.receivers
   EventDefinition.TransactionRegistered
   EventDefinition.TransactionRevoked
   FunctionDefinition.Split
   FunctionDefinition.withdraw
   FunctionDefinition.refund
   
   Suggested order:
   VariableDeclaration._recordedTransactions
   VariableDeclaration.receivers
   StructDefinition.Transaction
   EventDefinition.Received
   EventDefinition.TransactionRegistered
   EventDefinition.TransactionRevoked
   FunctionDefinition.Split
   FunctionDefinition.withdraw
   FunctionDefinition.refund

```

### <a name="NC-8"></a>[NC-8] Internal and private variables and functions names should begin with an underscore
According to the Solidity Style Guide, Non-`external` variable and function names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables)

*Instances (1)*:
```solidity
File: InadequateOrIncorrectLoggingOrDocumenation.sol

15:     mapping(address => uint256) receivers;

```

### <a name="NC-9"></a>[NC-9] Event is missing `indexed` fields
Index event fields make the field more quickly accessible to off-chain tools that parse events. However, note that each index field costs extra gas during emission, so it's not necessarily best to index the maximum allowed per event (three fields). Each event should use three indexed fields if there are three or more fields, and gas usage is not particularly of concern for the events in question. If there are fewer than three fields, all of the fields should be indexed.

*Instances (3)*:
```solidity
File: InadequateOrIncorrectLoggingOrDocumenation.sol

6:     event Received(address to, address from, uint256 amount);

16:     event TransactionRegistered(address from, address to, uint256 amount);

17:     event TransactionRevoked(address from, address to, uint256 amount);

```

### <a name="NC-10"></a>[NC-10] Variables need not be initialized to zero
The default value for variables is zero, so initializing them to zero is superfluous.

*Instances (3)*:
```solidity
File: InadequateOrIncorrectLoggingOrDocumenation.sol

30:             uint256 recepientIndex = 0;

52:             uint256 transactionIndex = 0;

73:             uint256 transactionIndex = 0;

```

