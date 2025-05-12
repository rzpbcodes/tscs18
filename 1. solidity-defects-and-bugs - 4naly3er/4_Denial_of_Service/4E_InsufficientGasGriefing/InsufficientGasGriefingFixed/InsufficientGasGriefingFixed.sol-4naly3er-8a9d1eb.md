# Report

| |Issue|Instances|
|-|:-|:-:|
| [L-1](#L-1) | External call recipient may consume all transaction gas | 2 |
| [L-2](#L-2) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [L-3](#L-3) | Unsafe solidity low-level call can cause gas grief attack | 1 |
| [GAS-1](#GAS-1) | Using bools for storage incurs overhead | 1 |
| [GAS-2](#GAS-2) | Use Custom Errors instead of Revert Strings to save Gas | 4 |
| [NC-1](#NC-1) | Replace `abi.encodeWithSignature` and `abi.encodeWithSelector` with `abi.encodeCall` which keeps the code typo/type safe | 2 |
| [NC-2](#NC-2) | `constant`s should be defined rather than using magic numbers | 1 |
| [NC-3](#NC-3) | Functions should not be longer than 50 lines | 1 |
| [NC-4](#NC-4) | NatSpec is completely non-existent on functions that should have them | 1 |
| [NC-5](#NC-5) | Consider using named mappings | 1 |
| [NC-6](#NC-6) | Internal and private variables and functions names should begin with an underscore | 1 |



### <a name="L-1"></a>[L-1] External call recipient may consume all transaction gas
There is no limit specified on the amount of gas used, so the recipient can use up all of the transaction's gas, causing it to revert. Use `addr.call{gas: <amount>}("")` or [this](https://github.com/nomad-xyz/ExcessivelySafeCall) library instead.

*Instances (2)*:
```solidity
File: InsufficientGasGriefingFixed.sol

13:         (bool gasCallSuccess, bytes memory gasBytes) = payable(worker).call(

22:         (bool success, ) = payable(worker).call(

```

### <a name="L-2"></a>[L-2] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: InsufficientGasGriefingFixed.sol

2: pragma solidity 0.8.17;

```

### <a name="L-3"></a>[L-3] Unsafe solidity low-level call can cause gas grief attack
Using the low-level calls of a solidity address can leave the contract open to gas grief attacks. These attacks occur when the called contract returns a large amount of data.

So when calling an external contract, it is necessary to check the length of the return data before reading/copying it (using `returndatasize()`).

*Instances (1)*:
```solidity
File: InsufficientGasGriefingFixed.sol

13:         (bool gasCallSuccess, bytes memory gasBytes) = payable(worker).call(

```

### <a name="GAS-1"></a>[GAS-1] Using bools for storage incurs overhead
Use uint256(1) and uint256(2) for true/false to avoid a Gwarmaccess (100 gas), and to avoid Gsset (20000 gas) when changing from ‘false’ to ‘true’, after having been ‘true’ in the past. See [source](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/58f635312aa21f947cae5f8578638a85aa2519f5/contracts/security/ReentrancyGuard.sol#L23-L27).

*Instances (1)*:
```solidity
File: InsufficientGasGriefingFixed.sol

6:     mapping(bytes => bool) executed;

```

### <a name="GAS-2"></a>[GAS-2] Use Custom Errors instead of Revert Strings to save Gas
Custom errors are available from solidity version 0.8.4. Custom errors save [**~50 gas**](https://gist.github.com/IllIllI000/ad1bd0d29a0101b25e57c293b4b0c746) each time they're hit by [avoiding having to allocate and store the revert string](https://blog.soliditylang.org/2021/04/21/custom-errors/#errors-in-depth). Not defining the strings also save deployment gas

Additionally, custom errors can be used inside and outside of contracts (including interfaces and libraries).

Source: <https://blog.soliditylang.org/2021/04/21/custom-errors/>:

> Starting from [Solidity v0.8.4](https://github.com/ethereum/solidity/releases/tag/v0.8.4), there is a convenient and gas-efficient way to explain to users why an operation failed through the use of custom errors. Until now, you could already use strings to give more information about failures (e.g., `revert("Insufficient funds.");`), but they are rather expensive, especially when it comes to deploy cost, and it is difficult to use dynamic information in them.

Consider replacing **all revert strings** with custom errors in the solution, and particularly those that have multiple occurrences:

*Instances (4)*:
```solidity
File: InsufficientGasGriefingFixed.sol

12:         require(!executed[data], "This transaction has already been executed");

16:         require(gasCallSuccess, "Cannot get gas limit");

17:         require(gasBytes.length == 32, "Invalid result format");

19:         require(gasleft() < gasLimit, "Insufficient gas");

```

### <a name="NC-1"></a>[NC-1] Replace `abi.encodeWithSignature` and `abi.encodeWithSelector` with `abi.encodeCall` which keeps the code typo/type safe
When using `abi.encodeWithSignature`, it is possible to include a typo for the correct function signature.
When using `abi.encodeWithSignature` or `abi.encodeWithSelector`, it is also possible to provide parameters that are not of the correct type for the function.

To avoid these pitfalls, it would be best to use [`abi.encodeCall`](https://solidity-by-example.org/abi-encode/) instead.

*Instances (2)*:
```solidity
File: InsufficientGasGriefingFixed.sol

14:             abi.encodeWithSignature("getGasLimit()")

23:             abi.encodeWithSignature("execute(bytes)", data)

```

### <a name="NC-2"></a>[NC-2] `constant`s should be defined rather than using magic numbers
Even [assembly](https://github.com/code-423n4/2022-05-opensea-seaport/blob/9d7ce4d08bf3c3010304a0476a785c70c0e90ae7/contracts/lib/TokenTransferrer.sol#L35-L39) can benefit from using readable constants instead of hex/numeric literals

*Instances (1)*:
```solidity
File: InsufficientGasGriefingFixed.sol

17:         require(gasBytes.length == 32, "Invalid result format");

```

### <a name="NC-3"></a>[NC-3] Functions should not be longer than 50 lines
Overly complex code can make understanding functionality more difficult, try to further modularize your code to ensure readability 

*Instances (1)*:
```solidity
File: InsufficientGasGriefingFixed.sol

8:     function execute(bytes calldata data, address worker)

```

### <a name="NC-4"></a>[NC-4] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (1)*:
```solidity
File: InsufficientGasGriefingFixed.sol

8:     function execute(bytes calldata data, address worker)

```

### <a name="NC-5"></a>[NC-5] Consider using named mappings
Consider moving to solidity version 0.8.18 or later, and using [named mappings](https://ethereum.stackexchange.com/questions/51629/how-to-name-the-arguments-in-mapping/145555#145555) to make it easier to understand the purpose of each mapping

*Instances (1)*:
```solidity
File: InsufficientGasGriefingFixed.sol

6:     mapping(bytes => bool) executed;

```

### <a name="NC-6"></a>[NC-6] Internal and private variables and functions names should begin with an underscore
According to the Solidity Style Guide, Non-`external` variable and function names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables)

*Instances (1)*:
```solidity
File: InsufficientGasGriefingFixed.sol

6:     mapping(bytes => bool) executed;

```

