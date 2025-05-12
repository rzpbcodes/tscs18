**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [oracle-latest-answer](#oracle-latest-answer) (1 results) (Medium)
 - [floating-pragma](#floating-pragma) (1 results) (Low)
## oracle-latest-answer
Impact: Medium
Confidence: High
 - [ ] ID-0
[ChainlinkDeprecatedPriceFeed.getLatestPrice()](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkDeprecatedPriceFeed/ChainlinkDeprecatedPriceFeed.sol#L19-L21) calls a deprecated function latestAnswer() :- 
	- [priceFeed.latestAnswer()](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkDeprecatedPriceFeed/ChainlinkDeprecatedPriceFeed.sol#L20)

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkDeprecatedPriceFeed/ChainlinkDeprecatedPriceFeed.sol#L19-L21


## floating-pragma
Impact: Low
Confidence: High
 - [ ] ID-1
[^0.8.17](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkDeprecatedPriceFeed/ChainlinkDeprecatedPriceFeed.sol#L2) is a floating pragma, use a fixed version of solidity:

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkDeprecatedPriceFeed/ChainlinkDeprecatedPriceFeed.sol#L2


