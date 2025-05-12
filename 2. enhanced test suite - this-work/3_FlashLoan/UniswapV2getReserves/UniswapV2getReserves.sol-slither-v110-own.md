**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [flashloan-getreserve](#flashloan-getreserve) (1 results) (Medium)
 - [div-by-zero-unchecked](#div-by-zero-unchecked) (1 results) (Low)
 - [floating-pragma](#floating-pragma) (1 results) (Low)
## flashloan-getreserve
Impact: Medium
Confidence: High
 - [ ] ID-0
[UniswapV2getReserves.getUniswapPrice()](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/3_FlashLoan/UniswapV2getReserves/UniswapV2getReserves.sol#L24-L28) uses price returned by getReserves(), vulnerable to Flashloan attack.
	- [(uint256(reserve1) * 1e18) / uint256(reserve0)](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/3_FlashLoan/UniswapV2getReserves/UniswapV2getReserves.sol#L27)
	- [(uint256(reserve1) * 1e18) / uint256(reserve0)](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/3_FlashLoan/UniswapV2getReserves/UniswapV2getReserves.sol#L27)

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/3_FlashLoan/UniswapV2getReserves/UniswapV2getReserves.sol#L24-L28


## div-by-zero-unchecked
Impact: Low
Confidence: Low
 - [ ] ID-1
[UniswapV2getReserves.getUniswapPrice()](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/3_FlashLoan/UniswapV2getReserves/UniswapV2getReserves.sol#L24-L28) performs divison by not zero-checked variable:- 
	- [(uint256(reserve1) * 1e18) / uint256(reserve0)](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/3_FlashLoan/UniswapV2getReserves/UniswapV2getReserves.sol#L27)

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/3_FlashLoan/UniswapV2getReserves/UniswapV2getReserves.sol#L24-L28


## floating-pragma
Impact: Low
Confidence: High
 - [ ] ID-2
[^0.8.17](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/3_FlashLoan/UniswapV2getReserves/UniswapV2getReserves.sol#L2) is a floating pragma, use a fixed version of solidity:

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/3_FlashLoan/UniswapV2getReserves/UniswapV2getReserves.sol#L2


