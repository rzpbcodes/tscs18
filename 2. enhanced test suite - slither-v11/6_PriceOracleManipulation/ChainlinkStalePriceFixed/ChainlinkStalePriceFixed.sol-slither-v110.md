**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [timestamp](#timestamp) (1 results) (Low)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [immutable-states](#immutable-states) (1 results) (Optimization)
## timestamp
Impact: Low
Confidence: Medium
 - [ ] ID-0
[ChainlinkStalePriceFixed.getLatestPrice()](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkStalePriceFixed/ChainlinkStalePriceFixed.sol#L24-L38) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(block.timestamp - updatedAt < 3600,Stale price data)](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkStalePriceFixed/ChainlinkStalePriceFixed.sol#L34)

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkStalePriceFixed/ChainlinkStalePriceFixed.sol#L24-L38


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint ^0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [^0.8.17](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkStalePriceFixed/ChainlinkStalePriceFixed.sol#L2)

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkStalePriceFixed/ChainlinkStalePriceFixed.sol#L2


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-2
[ChainlinkStalePriceFixed.priceFeed](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkStalePriceFixed/ChainlinkStalePriceFixed.sol#L18) should be immutable 

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/6_PriceOracleManipulation/ChainlinkStalePriceFixed/ChainlinkStalePriceFixed.sol#L18


