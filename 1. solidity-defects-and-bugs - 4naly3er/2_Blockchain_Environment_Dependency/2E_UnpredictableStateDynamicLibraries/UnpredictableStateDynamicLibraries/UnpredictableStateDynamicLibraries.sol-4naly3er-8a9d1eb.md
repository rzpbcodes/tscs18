# Report

| |Issue|Instances|
|-|:-|:-:|
| [M-1](#M-1) | `call()` should be used instead of `transfer()` on an `address payable` | 1 |
| [L-1](#L-1) | Unsafe ERC20 operation(s) | 1 |
| [GAS-1](#GAS-1) | For Operations that will not overflow, you could use unchecked | 2 |
| [GAS-2](#GAS-2) | Use Custom Errors instead of Revert Strings to save Gas | 1 |
| [GAS-3](#GAS-3) | State variables only set in the constructor should be declared `immutable` | 1 |
| [NC-1](#NC-1) | Functions should not be longer than 50 lines | 1 |
| [NC-2](#NC-2) | Interfaces should be defined in separate files from their usage | 1 |
| [NC-3](#NC-3) | NatSpec is completely non-existent on functions that should have them | 1 |
| [NC-4](#NC-4) | Use a `modifier` instead of a `require/if` statement for a special `msg.sender` actor | 1 |
| [NC-5](#NC-5) | Consider using named mappings | 1 |
| [NC-6](#NC-6) | Contract does not follow the Solidity style guide's suggested layout ordering | 1 |
| [NC-7](#NC-7) | Internal and private variables and functions names should begin with an underscore | 1 |



### <a name="M-1"></a>[M-1] `call()` should be used instead of `transfer()` on an `address payable`
The use of the deprecated `transfer()` function for an address may make the transaction fail due to the 2300 gas stipend

*Instances (1)*:
```solidity
File: UnpredictableStateDynamicLibraries.sol

52:         payable(msg.sender).transfer(amount);

```

### <a name="L-1"></a>[L-1] Unsafe ERC20 operation(s)

*Instances (1)*:
```solidity
File: UnpredictableStateDynamicLibraries.sol

52:         payable(msg.sender).transfer(amount);

```

### <a name="GAS-1"></a>[GAS-1] For Operations that will not overflow, you could use unchecked

*Instances (2)*:
```solidity
File: UnpredictableStateDynamicLibraries.sol

37:         uint256 endLoan = startLoan + duration;

44:         uint256 owed = amount + interest;

```

### <a name="GAS-2"></a>[GAS-2] Use Custom Errors instead of Revert Strings to save Gas
Custom errors are available from solidity version 0.8.4. Custom errors save [**~50 gas**](https://gist.github.com/IllIllI000/ad1bd0d29a0101b25e57c293b4b0c746) each time they're hit by [avoiding having to allocate and store the revert string](https://blog.soliditylang.org/2021/04/21/custom-errors/#errors-in-depth). Not defining the strings also save deployment gas

Additionally, custom errors can be used inside and outside of contracts (including interfaces and libraries).

Source: <https://blog.soliditylang.org/2021/04/21/custom-errors/>:

> Starting from [Solidity v0.8.4](https://github.com/ethereum/solidity/releases/tag/v0.8.4), there is a convenient and gas-efficient way to explain to users why an operation failed through the use of custom errors. Until now, you could already use strings to give more information about failures (e.g., `revert("Insufficient funds.");`), but they are rather expensive, especially when it comes to deploy cost, and it is difficult to use dynamic information in them.

Consider replacing **all revert strings** with custom errors in the solution, and particularly those that have multiple occurrences:

*Instances (1)*:
```solidity
File: UnpredictableStateDynamicLibraries.sol

35:         require(!debters[msg.sender].active, "You are already in debt");

```

### <a name="GAS-3"></a>[GAS-3] State variables only set in the constructor should be declared `immutable`
Variables only set in the constructor and never edited afterwards should be marked as immutable, as it would avoid the expensive storage-writing operation in the constructor (around **20 000 gas** per variable) and replace the expensive storage-reading operations (around **2100 gas** per reading) to a less expensive value reading (**3 gas**)

*Instances (1)*:
```solidity
File: UnpredictableStateDynamicLibraries.sol

31:         _library = LibraryInterface(libraryAddress);

```

### <a name="NC-1"></a>[NC-1] Functions should not be longer than 50 lines
Overly complex code can make understanding functionality more difficult, try to further modularize your code to ensure readability 

*Instances (1)*:
```solidity
File: UnpredictableStateDynamicLibraries.sol

34:     function loan(uint256 amount, uint256 duration) external {

```

### <a name="NC-2"></a>[NC-2] Interfaces should be defined in separate files from their usage
The interfaces below should be defined in separate files, so that it's easier for future projects to import them, and to avoid duplication later on if they need to be used elsewhere in the project

*Instances (1)*:
```solidity
File: UnpredictableStateDynamicLibraries.sol

4: interface LibraryInterface {

```

### <a name="NC-3"></a>[NC-3] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (1)*:
```solidity
File: UnpredictableStateDynamicLibraries.sol

34:     function loan(uint256 amount, uint256 duration) external {

```

### <a name="NC-4"></a>[NC-4] Use a `modifier` instead of a `require/if` statement for a special `msg.sender` actor
If a function is supposed to be access-controlled, a `modifier` should be used instead of a `require/if` statement for more readability.

*Instances (1)*:
```solidity
File: UnpredictableStateDynamicLibraries.sol

35:         require(!debters[msg.sender].active, "You are already in debt");

```

### <a name="NC-5"></a>[NC-5] Consider using named mappings
Consider moving to solidity version 0.8.18 or later, and using [named mappings](https://ethereum.stackexchange.com/questions/51629/how-to-name-the-arguments-in-mapping/145555#145555) to make it easier to understand the purpose of each mapping

*Instances (1)*:
```solidity
File: UnpredictableStateDynamicLibraries.sol

27:     mapping(address => Debt) private debters;

```

### <a name="NC-6"></a>[NC-6] Contract does not follow the Solidity style guide's suggested layout ordering
The [style guide](https://docs.soliditylang.org/en/v0.8.16/style-guide.html#order-of-layout) says that, within a contract, the ordering should be:

1) Type declarations
2) State variables
3) Events
4) Modifiers
5) Functions

However, the contract(s) below do not follow this ordering

*Instances (1)*:
```solidity
File: UnpredictableStateDynamicLibraries.sol

1: 
   Current order:
   FunctionDefinition.getInterestRate
   FunctionDefinition.getInterest
   StructDefinition.Debt
   VariableDeclaration.debters
   VariableDeclaration._library
   FunctionDefinition.constructor
   FunctionDefinition.loan
   
   Suggested order:
   VariableDeclaration.debters
   VariableDeclaration._library
   StructDefinition.Debt
   FunctionDefinition.getInterestRate
   FunctionDefinition.getInterest
   FunctionDefinition.constructor
   FunctionDefinition.loan

```

### <a name="NC-7"></a>[NC-7] Internal and private variables and functions names should begin with an underscore
According to the Solidity Style Guide, Non-`external` variable and function names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables)

*Instances (1)*:
```solidity
File: UnpredictableStateDynamicLibraries.sol

27:     mapping(address => Debt) private debters;

```

