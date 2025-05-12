# Report

| |Issue|Instances|
|-|:-|:-:|
| [M-1](#M-1) | Centralization Risk for trusted owners | 2 |
| [M-2](#M-2) | `call()` should be used instead of `transfer()` on an `address payable` | 1 |
| [L-1](#L-1) | Division by zero not prevented | 1 |
| [L-2](#L-2) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [L-3](#L-3) | Unsafe ERC20 operation(s) | 1 |
| [GAS-1](#GAS-1) | `array[index] += amount` is cheaper than `array[index] = array[index] + amount` (or related variants) | 1 |
| [GAS-2](#GAS-2) | For Operations that will not overflow, you could use unchecked | 2 |
| [GAS-3](#GAS-3) | Use Custom Errors instead of Revert Strings to save Gas | 1 |
| [GAS-4](#GAS-4) | State variables only set in the constructor should be declared `immutable` | 2 |
| [GAS-5](#GAS-5) | Functions guaranteed to revert when called by normal users can be marked `payable` | 2 |
| [GAS-6](#GAS-6) | Use != 0 instead of > 0 for unsigned integer comparison | 1 |
| [NC-1](#NC-1) | Change uint to uint256 | 7 |
| [NC-2](#NC-2) | NatSpec is completely non-existent on functions that should have them | 4 |
| [NC-3](#NC-3) | Use a `modifier` instead of a `require/if` statement for a special `msg.sender` actor | 2 |
| [NC-4](#NC-4) | Consider using named mappings | 2 |
| [NC-5](#NC-5) | `require()` / `revert()` statements should have descriptive reason strings | 7 |
| [NC-6](#NC-6) | Contract does not follow the Solidity style guide's suggested layout ordering | 1 |
| [NC-7](#NC-7) | Internal and private variables and functions names should begin with an underscore | 5 |



### <a name="M-1"></a>[M-1] Centralization Risk for trusted owners

#### Impact:
Contracts have owners with privileged rights to perform admin tasks and need to be trusted to not perform malicious updates or drain funds.

*Instances (2)*:
```solidity
File: DoSWithGasLimitBetsFixed.sol

30:     function open() external onlyOwner {

43:     function close(uint score) external onlyOwner {

```

### <a name="M-2"></a>[M-2] `call()` should be used instead of `transfer()` on an `address payable`
The use of the deprecated `transfer()` function for an address may make the transaction fail due to the 2300 gas stipend

*Instances (1)*:
```solidity
File: DoSWithGasLimitBetsFixed.sol

55:         payable(msg.sender).transfer(amount);

```

### <a name="L-1"></a>[L-1] Division by zero not prevented
The divisions below take an input parameter which does not have any zero-value checks, which may lead to the functions reverting when zero is passed.

*Instances (1)*:
```solidity
File: DoSWithGasLimitBetsFixed.sol

47:         amount = address(this).balance / betsCount[score];

```

### <a name="L-2"></a>[L-2] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: DoSWithGasLimitBetsFixed.sol

2: pragma solidity 0.8.17;

```

### <a name="L-3"></a>[L-3] Unsafe ERC20 operation(s)

*Instances (1)*:
```solidity
File: DoSWithGasLimitBetsFixed.sol

55:         payable(msg.sender).transfer(amount);

```

### <a name="GAS-1"></a>[GAS-1] `array[index] += amount` is cheaper than `array[index] = array[index] + amount` (or related variants)
When updating a value in an array with arithmetic, using `array[index] += amount` is cheaper than `array[index] = array[index] + amount`.

This is because you avoid an additional `mload` when the array is stored in memory, and an `sload` when the array is stored in storage.

This can be applied for any arithmetic operation including `+=`, `-=`,`/=`,`*=`,`^=`,`&=`, `%=`, `<<=`,`>>=`, and `>>>=`.

This optimization can be particularly significant if the pattern occurs during a loop.

*Saves 28 gas for a storage array, 38 for a memory array*

*Instances (1)*:
```solidity
File: DoSWithGasLimitBetsFixed.sol

39:         betsCount[value] = betsCount[value] + 1;

```

### <a name="GAS-2"></a>[GAS-2] For Operations that will not overflow, you could use unchecked

*Instances (2)*:
```solidity
File: DoSWithGasLimitBetsFixed.sol

39:         betsCount[value] = betsCount[value] + 1;

47:         amount = address(this).balance / betsCount[score];

```

### <a name="GAS-3"></a>[GAS-3] Use Custom Errors instead of Revert Strings to save Gas
Custom errors are available from solidity version 0.8.4. Custom errors save [**~50 gas**](https://gist.github.com/IllIllI000/ad1bd0d29a0101b25e57c293b4b0c746) each time they're hit by [avoiding having to allocate and store the revert string](https://blog.soliditylang.org/2021/04/21/custom-errors/#errors-in-depth). Not defining the strings also save deployment gas

Additionally, custom errors can be used inside and outside of contracts (including interfaces and libraries).

Source: <https://blog.soliditylang.org/2021/04/21/custom-errors/>:

> Starting from [Solidity v0.8.4](https://github.com/ethereum/solidity/releases/tag/v0.8.4), there is a convenient and gas-efficient way to explain to users why an operation failed through the use of custom errors. Until now, you could already use strings to give more information about failures (e.g., `revert("Insufficient funds.");`), but they are rather expensive, especially when it comes to deploy cost, and it is difficult to use dynamic information in them.

Consider replacing **all revert strings** with custom errors in the solution, and particularly those that have multiple occurrences:

*Instances (1)*:
```solidity
File: DoSWithGasLimitBetsFixed.sol

19:         require(msg.sender == owner, "Only owner");

```

### <a name="GAS-4"></a>[GAS-4] State variables only set in the constructor should be declared `immutable`
Variables only set in the constructor and never edited afterwards should be marked as immutable, as it would avoid the expensive storage-writing operation in the constructor (around **20 000 gas** per variable) and replace the expensive storage-reading operations (around **2100 gas** per reading) to a less expensive value reading (**3 gas**)

*Instances (2)*:
```solidity
File: DoSWithGasLimitBetsFixed.sol

24:         owner = msg.sender;

26:         threshold = _threshold;

```

### <a name="GAS-5"></a>[GAS-5] Functions guaranteed to revert when called by normal users can be marked `payable`
If a function modifier such as `onlyOwner` is used, the function will revert if a normal user tries to pay the function. Marking the function as `payable` will lower the gas cost for legitimate callers because the compiler will not include checks for whether a payment was provided.

*Instances (2)*:
```solidity
File: DoSWithGasLimitBetsFixed.sol

30:     function open() external onlyOwner {

43:     function close(uint score) external onlyOwner {

```

### <a name="GAS-6"></a>[GAS-6] Use != 0 instead of > 0 for unsigned integer comparison

*Instances (1)*:
```solidity
File: DoSWithGasLimitBetsFixed.sol

45:         require(betsCount[score] > 0);

```

### <a name="NC-1"></a>[NC-1] Change uint to uint256
Throughout the code base, some variables are declared as `uint`. To favor explicitness, consider changing all instances of `uint` to `uint256`

*Instances (7)*:
```solidity
File: DoSWithGasLimitBetsFixed.sol

6:     uint private threshold;

7:     uint private amount;

8:     uint private winningScore;

10:     mapping(uint => uint) public betsCount;

23:     constructor(uint _threshold) {

36:     function bet(uint value) external payable {

43:     function close(uint score) external onlyOwner {

```

### <a name="NC-2"></a>[NC-2] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (4)*:
```solidity
File: DoSWithGasLimitBetsFixed.sol

30:     function open() external onlyOwner {

36:     function bet(uint value) external payable {

43:     function close(uint score) external onlyOwner {

51:     function withdraw() external {

```

### <a name="NC-3"></a>[NC-3] Use a `modifier` instead of a `require/if` statement for a special `msg.sender` actor
If a function is supposed to be access-controlled, a `modifier` should be used instead of a `require/if` statement for more readability.

*Instances (2)*:
```solidity
File: DoSWithGasLimitBetsFixed.sol

19:         require(msg.sender == owner, "Only owner");

53:         require(bets[msg.sender] == winningScore);

```

### <a name="NC-4"></a>[NC-4] Consider using named mappings
Consider moving to solidity version 0.8.18 or later, and using [named mappings](https://ethereum.stackexchange.com/questions/51629/how-to-name-the-arguments-in-mapping/145555#145555) to make it easier to understand the purpose of each mapping

*Instances (2)*:
```solidity
File: DoSWithGasLimitBetsFixed.sol

9:     mapping(address => uint) public bets;

10:     mapping(uint => uint) public betsCount;

```

### <a name="NC-5"></a>[NC-5] `require()` / `revert()` statements should have descriptive reason strings

*Instances (7)*:
```solidity
File: DoSWithGasLimitBetsFixed.sol

31:         require(state == Status.CLOSED);

37:         require(state == Status.OPEN);

38:         require(msg.value == threshold);

44:         require(state == Status.OPEN);

45:         require(betsCount[score] > 0);

52:         require(state == Status.FINISHED);

53:         require(bets[msg.sender] == winningScore);

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
File: DoSWithGasLimitBetsFixed.sol

1: 
   Current order:
   VariableDeclaration.owner
   VariableDeclaration.threshold
   VariableDeclaration.amount
   VariableDeclaration.winningScore
   VariableDeclaration.bets
   VariableDeclaration.betsCount
   EnumDefinition.Status
   VariableDeclaration.state
   ModifierDefinition.onlyOwner
   FunctionDefinition.constructor
   FunctionDefinition.open
   FunctionDefinition.bet
   FunctionDefinition.close
   FunctionDefinition.withdraw
   
   Suggested order:
   VariableDeclaration.owner
   VariableDeclaration.threshold
   VariableDeclaration.amount
   VariableDeclaration.winningScore
   VariableDeclaration.bets
   VariableDeclaration.betsCount
   VariableDeclaration.state
   EnumDefinition.Status
   ModifierDefinition.onlyOwner
   FunctionDefinition.constructor
   FunctionDefinition.open
   FunctionDefinition.bet
   FunctionDefinition.close
   FunctionDefinition.withdraw

```

### <a name="NC-7"></a>[NC-7] Internal and private variables and functions names should begin with an underscore
According to the Solidity Style Guide, Non-`external` variable and function names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables)

*Instances (5)*:
```solidity
File: DoSWithGasLimitBetsFixed.sol

5:     address private owner;

6:     uint private threshold;

7:     uint private amount;

8:     uint private winningScore;

16:     Status private state;

```

