**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [unused-return](#unused-return) (1 results) (Medium)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [immutable-states](#immutable-states) (1 results) (Optimization)
## unused-return
Impact: Medium
Confidence: Medium
 - [ ] ID-0
[ChainlinkStalePrice.getLatestPrice()](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkStalePrice/ChainlinkStalePrice.sol#L23-L26) ignores return value by [(None,price,None,None,None) = priceFeed.latestRoundData()](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkStalePrice/ChainlinkStalePrice.sol#L24)

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkStalePrice/ChainlinkStalePrice.sol#L23-L26


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint ^0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [^0.8.17](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkStalePrice/ChainlinkStalePrice.sol#L2)

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkStalePrice/ChainlinkStalePrice.sol#L2


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-2
[ChainlinkStalePrice.priceFeed](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkStalePrice/ChainlinkStalePrice.sol#L17) should be immutable 

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkStalePrice/ChainlinkStalePrice.sol#L17


