**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [oracle-latest-round-data](#oracle-latest-round-data) (1 results) (Medium)
 - [floating-pragma](#floating-pragma) (1 results) (Low)
## oracle-latest-round-data
Impact: Medium
Confidence: High
 - [ ] ID-0
[ChainlinkStalePrice.getLatestPrice()](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkStalePrice/ChainlinkStalePrice.sol#L23-L26) may use stale price returned by latestRoundData(), check all returned variables.
	- [(None,price,None,None,None) = priceFeed.latestRoundData()](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkStalePrice/ChainlinkStalePrice.sol#L24)

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkStalePrice/ChainlinkStalePrice.sol#L23-L26


## floating-pragma
Impact: Low
Confidence: High
 - [ ] ID-1
[^0.8.17](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkStalePrice/ChainlinkStalePrice.sol#L2) is a floating pragma, use a fixed version of solidity:

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkStalePrice/ChainlinkStalePrice.sol#L2


