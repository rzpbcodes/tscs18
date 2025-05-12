# Report

| |Issue|Instances|
|-|:-|:-:|
| [L-1](#L-1) | Division by zero not prevented | 1 |
| [L-2](#L-2) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [GAS-1](#GAS-1) | For Operations that will not overflow, you could use unchecked | 3 |
| [GAS-2](#GAS-2) | State variables only set in the constructor should be declared `immutable` | 1 |
| [NC-1](#NC-1) | `constant`s should be defined rather than using magic numbers | 1 |
| [NC-2](#NC-2) | Functions should not be longer than 50 lines | 2 |
| [NC-3](#NC-3) | Change uint to uint256 | 3 |
| [NC-4](#NC-4) | Contract does not follow the Solidity style guide's suggested layout ordering | 1 |
| [NC-5](#NC-5) | Use Underscores for Number Literals (add an underscore every 3 digits) | 1 |
| [NC-6](#NC-6) | Internal and private variables and functions names should begin with an underscore | 1 |



### <a name="L-1"></a>[L-1] Division by zero not prevented
The divisions below take an input parameter which does not have any zero-value checks, which may lead to the functions reverting when zero is passed.

*Instances (1)*:
```solidity
File: HardcodedGasLimit.sol

8:         x = x / x;

```

### <a name="L-2"></a>[L-2] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: HardcodedGasLimit.sol

2: pragma solidity 0.8.17;

```

### <a name="GAS-1"></a>[GAS-1] For Operations that will not overflow, you could use unchecked

*Instances (3)*:
```solidity
File: HardcodedGasLimit.sol

7:         x = x * x;

8:         x = x / x;

9:         x = x + 1;

```

### <a name="GAS-2"></a>[GAS-2] State variables only set in the constructor should be declared `immutable`
Variables only set in the constructor and never edited afterwards should be marked as immutable, as it would avoid the expensive storage-writing operation in the constructor (around **20 000 gas** per variable) and replace the expensive storage-reading operations (around **2100 gas** per reading) to a less expensive value reading (**3 gas**)

*Instances (1)*:
```solidity
File: HardcodedGasLimit.sol

21:         computer = Computer(compAddr);

```

### <a name="NC-1"></a>[NC-1] `constant`s should be defined rather than using magic numbers
Even [assembly](https://github.com/code-423n4/2022-05-opensea-seaport/blob/9d7ce4d08bf3c3010304a0476a785c70c0e90ae7/contracts/lib/TokenTransferrer.sol#L35-L39) can benefit from using readable constants instead of hex/numeric literals

*Instances (1)*:
```solidity
File: HardcodedGasLimit.sol

25:         return computer.compute{gas: 2000}(x);

```

### <a name="NC-2"></a>[NC-2] Functions should not be longer than 50 lines
Overly complex code can make understanding functionality more difficult, try to further modularize your code to ensure readability 

*Instances (2)*:
```solidity
File: HardcodedGasLimit.sol

5:     function compute(uint input) external pure returns (uint) {

24:     function doSomeComputation(uint x) external view returns (uint) {

```

### <a name="NC-3"></a>[NC-3] Change uint to uint256
Throughout the code base, some variables are declared as `uint`. To favor explicitness, consider changing all instances of `uint` to `uint256`

*Instances (3)*:
```solidity
File: HardcodedGasLimit.sol

5:     function compute(uint input) external pure returns (uint) {

6:         uint x = input;

24:     function doSomeComputation(uint x) external view returns (uint) {

```

### <a name="NC-4"></a>[NC-4] Contract does not follow the Solidity style guide's suggested layout ordering
The [style guide](https://docs.soliditylang.org/en/v0.8.16/style-guide.html#order-of-layout) says that, within a contract, the ordering should be:

1) Type declarations
2) State variables
3) Events
4) Modifiers
5) Functions

However, the contract(s) below do not follow this ordering

*Instances (1)*:
```solidity
File: HardcodedGasLimit.sol

1: 
   Current order:
   FunctionDefinition.compute
   VariableDeclaration.computer
   FunctionDefinition.constructor
   FunctionDefinition.doSomeComputation
   
   Suggested order:
   VariableDeclaration.computer
   FunctionDefinition.compute
   FunctionDefinition.constructor
   FunctionDefinition.doSomeComputation

```

### <a name="NC-5"></a>[NC-5] Use Underscores for Number Literals (add an underscore every 3 digits)

*Instances (1)*:
```solidity
File: HardcodedGasLimit.sol

25:         return computer.compute{gas: 2000}(x);

```

### <a name="NC-6"></a>[NC-6] Internal and private variables and functions names should begin with an underscore
According to the Solidity Style Guide, Non-`external` variable and function names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables)

*Instances (1)*:
```solidity
File: HardcodedGasLimit.sol

18:     Computer computer;

```

