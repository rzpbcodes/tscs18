# Report

| |Issue|Instances|
|-|:-|:-:|
| [M-1](#M-1) | `block.number` means different things on different L2s | 1 |
| [M-2](#M-2) | Centralization Risk for trusted owners | 1 |
| [M-3](#M-3) | `call()` should be used instead of `transfer()` on an `address payable` | 2 |
| [L-1](#L-1) | Empty `receive()/payable fallback()` function does not authenticate requests | 1 |
| [L-2](#L-2) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [L-3](#L-3) | Unsafe ERC20 operation(s) | 2 |
| [GAS-1](#GAS-1) | For Operations that will not overflow, you could use unchecked | 2 |
| [GAS-2](#GAS-2) | Use Custom Errors instead of Revert Strings to save Gas | 1 |
| [GAS-3](#GAS-3) | State variables only set in the constructor should be declared `immutable` | 1 |
| [GAS-4](#GAS-4) | Functions guaranteed to revert when called by normal users can be marked `payable` | 1 |
| [NC-1](#NC-1) | `constant`s should be defined rather than using magic numbers | 2 |
| [NC-2](#NC-2) | Functions should not be longer than 50 lines | 1 |
| [NC-3](#NC-3) | NatSpec is completely non-existent on functions that should have them | 2 |
| [NC-4](#NC-4) | Consider using named mappings | 1 |



### <a name="M-1"></a>[M-1] `block.number` means different things on different L2s
On Optimism, `block.number` is the L2 block number, but on Arbitrum, it's the L1 block number, and `ArbSys(address(100)).arbBlockNumber()` must be used. Furthermore, L2 block numbers often occur much more frequently than L1 block numbers (any may even occur on a per-transaction basis), so using block numbers for timing results in inconsistencies, especially when voting is involved across multiple chains. As of version 4.9, OpenZeppelin has [modified](https://blog.openzeppelin.com/introducing-openzeppelin-contracts-v4.9#governor) their governor code to use a clock rather than block numbers, to avoid these sorts of issues, but this still requires that the project [implement](https://docs.openzeppelin.com/contracts/4.x/governance#token_2) a [clock](https://eips.ethereum.org/EIPS/eip-6372) for each L2.

*Instances (1)*:
```solidity
File: BadRandomNumberGen.sol

37:         uint256 winnerIndex = block.number % _contendersCount;

```

### <a name="M-2"></a>[M-2] Centralization Risk for trusted owners

#### Impact:
Contracts have owners with privileged rights to perform admin tasks and need to be trusted to not perform malicious updates or drain funds.

*Instances (1)*:
```solidity
File: BadRandomNumberGen.sol

35:     function chooseWinner() external onlyOwner {

```

### <a name="M-3"></a>[M-3] `call()` should be used instead of `transfer()` on an `address payable`
The use of the deprecated `transfer()` function for an address may make the transaction fail due to the 2300 gas stipend

*Instances (2)*:
```solidity
File: BadRandomNumberGen.sol

39:         payable(_contenders[winnerIndex]).transfer(

42:         payable(_owner).transfer(1 ether);

```

### <a name="L-1"></a>[L-1] Empty `receive()/payable fallback()` function does not authenticate requests
If the intention is for the Ether to be used, the function should call another function, otherwise it should revert (e.g. require(msg.sender == address(weth))). Having no access control on the function means that someone may send Ether to the contract, and have no way to get anything back out, which is a loss of funds. If the concern is having to spend a small amount of gas to check the sender against an immutable address, the code should at least have a function to rescue unused Ether.

*Instances (1)*:
```solidity
File: BadRandomNumberGen.sol

24:     receive() external payable {}

```

### <a name="L-2"></a>[L-2] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: BadRandomNumberGen.sol

2: pragma solidity 0.8.17;

```

### <a name="L-3"></a>[L-3] Unsafe ERC20 operation(s)

*Instances (2)*:
```solidity
File: BadRandomNumberGen.sol

39:         payable(_contenders[winnerIndex]).transfer(

42:         payable(_owner).transfer(1 ether);

```

### <a name="GAS-1"></a>[GAS-1] For Operations that will not overflow, you could use unchecked

*Instances (2)*:
```solidity
File: BadRandomNumberGen.sol

32:         _contendersCount = _contendersCount + 1;

40:             address(this).balance - 1 ether

```

### <a name="GAS-2"></a>[GAS-2] Use Custom Errors instead of Revert Strings to save Gas
Custom errors are available from solidity version 0.8.4. Custom errors save [**~50 gas**](https://gist.github.com/IllIllI000/ad1bd0d29a0101b25e57c293b4b0c746) each time they're hit by [avoiding having to allocate and store the revert string](https://blog.soliditylang.org/2021/04/21/custom-errors/#errors-in-depth). Not defining the strings also save deployment gas

Additionally, custom errors can be used inside and outside of contracts (including interfaces and libraries).

Source: <https://blog.soliditylang.org/2021/04/21/custom-errors/>:

> Starting from [Solidity v0.8.4](https://github.com/ethereum/solidity/releases/tag/v0.8.4), there is a convenient and gas-efficient way to explain to users why an operation failed through the use of custom errors. Until now, you could already use strings to give more information about failures (e.g., `revert("Insufficient funds.");`), but they are rather expensive, especially when it comes to deploy cost, and it is difficult to use dynamic information in them.

Consider replacing **all revert strings** with custom errors in the solution, and particularly those that have multiple occurrences:

*Instances (1)*:
```solidity
File: BadRandomNumberGen.sol

36:         require(_contendersCount > 10, "Not enough contenders registered");

```

### <a name="GAS-3"></a>[GAS-3] State variables only set in the constructor should be declared `immutable`
Variables only set in the constructor and never edited afterwards should be marked as immutable, as it would avoid the expensive storage-writing operation in the constructor (around **20 000 gas** per variable) and replace the expensive storage-reading operations (around **2100 gas** per reading) to a less expensive value reading (**3 gas**)

*Instances (1)*:
```solidity
File: BadRandomNumberGen.sol

20:         _owner = msg.sender;

```

### <a name="GAS-4"></a>[GAS-4] Functions guaranteed to revert when called by normal users can be marked `payable`
If a function modifier such as `onlyOwner` is used, the function will revert if a normal user tries to pay the function. Marking the function as `payable` will lower the gas cost for legitimate callers because the compiler will not include checks for whether a payment was provided.

*Instances (1)*:
```solidity
File: BadRandomNumberGen.sol

35:     function chooseWinner() external onlyOwner {

```

### <a name="NC-1"></a>[NC-1] `constant`s should be defined rather than using magic numbers
Even [assembly](https://github.com/code-423n4/2022-05-opensea-seaport/blob/9d7ce4d08bf3c3010304a0476a785c70c0e90ae7/contracts/lib/TokenTransferrer.sol#L35-L39) can benefit from using readable constants instead of hex/numeric literals

*Instances (2)*:
```solidity
File: BadRandomNumberGen.sol

28:             msg.value >= 1 ether && msg.value < 2 ether,

36:         require(_contendersCount > 10, "Not enough contenders registered");

```

### <a name="NC-2"></a>[NC-2] Functions should not be longer than 50 lines
Overly complex code can make understanding functionality more difficult, try to further modularize your code to ensure readability 

*Instances (1)*:
```solidity
File: BadRandomNumberGen.sol

26:     function register(address contender) external payable {

```

### <a name="NC-3"></a>[NC-3] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (2)*:
```solidity
File: BadRandomNumberGen.sol

26:     function register(address contender) external payable {

35:     function chooseWinner() external onlyOwner {

```

### <a name="NC-4"></a>[NC-4] Consider using named mappings
Consider moving to solidity version 0.8.18 or later, and using [named mappings](https://ethereum.stackexchange.com/questions/51629/how-to-name-the-arguments-in-mapping/145555#145555) to make it easier to understand the purpose of each mapping

*Instances (1)*:
```solidity
File: BadRandomNumberGen.sol

8:     mapping(uint256 => address) private _contenders;

```

