**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [div-by-zero-unchecked](#div-by-zero-unchecked) (1 results) (Low)
 - [floating-pragma](#floating-pragma) (1 results) (Low)
## div-by-zero-unchecked
Impact: Low
Confidence: Low
 - [ ] ID-0
[UniswapV3Poolslot0Fixed.getTWAPPrice()](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/3_FlashLoan/UniswapV3Poolslot0Fixed/UniswapV3Poolslot0Fixed.sol#L26-L38) performs divison by not zero-checked variable:- 
	- [averageTick = tickDifference / int56(uint56(TWAP_INTERVAL))](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/3_FlashLoan/UniswapV3Poolslot0Fixed/UniswapV3Poolslot0Fixed.sol#L34)

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/3_FlashLoan/UniswapV3Poolslot0Fixed/UniswapV3Poolslot0Fixed.sol#L26-L38


## floating-pragma
Impact: Low
Confidence: High
 - [ ] ID-1
[^0.8.17](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/3_FlashLoan/UniswapV3Poolslot0Fixed/UniswapV3Poolslot0Fixed.sol#L2) is a floating pragma, use a fixed version of solidity:

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/3_FlashLoan/UniswapV3Poolslot0Fixed/UniswapV3Poolslot0Fixed.sol#L2


