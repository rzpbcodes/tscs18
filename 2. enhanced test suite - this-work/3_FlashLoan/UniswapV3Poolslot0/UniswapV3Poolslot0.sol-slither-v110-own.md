**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [flashloan-slot0](#flashloan-slot0) (1 results) (Medium)
 - [floating-pragma](#floating-pragma) (1 results) (Low)
## flashloan-slot0
Impact: Medium
Confidence: High
 - [ ] ID-0
[UniswapV3Poolslot0.getUniswapPrice()](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/3_FlashLoan/UniswapV3Poolslot0/UniswapV3Poolslot0.sol#L26-L29) uses price returned by slot0(), vulnerable to Flashloan attack.
	- [price = uint256(sqrtPriceX96) * uint256(sqrtPriceX96) * 1e18 >> (96 * 2)](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/3_FlashLoan/UniswapV3Poolslot0/UniswapV3Poolslot0.sol#L28)

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/3_FlashLoan/UniswapV3Poolslot0/UniswapV3Poolslot0.sol#L26-L29


## floating-pragma
Impact: Low
Confidence: High
 - [ ] ID-1
[^0.8.17](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/3_FlashLoan/UniswapV3Poolslot0/UniswapV3Poolslot0.sol#L2) is a floating pragma, use a fixed version of solidity:

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/3_FlashLoan/UniswapV3Poolslot0/UniswapV3Poolslot0.sol#L2


