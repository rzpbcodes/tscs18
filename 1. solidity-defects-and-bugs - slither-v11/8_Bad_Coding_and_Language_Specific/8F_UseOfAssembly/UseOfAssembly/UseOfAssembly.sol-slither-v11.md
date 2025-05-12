**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [uninitialized-state](#uninitialized-state) (1 results) (High)
 - [assembly](#assembly) (2 results) (Informational)
 - [solc-version](#solc-version) (1 results) (Informational)
## uninitialized-state
Impact: High
Confidence: High
 - [ ] ID-0
[UseOfAssembly._balance](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssembly/UseOfAssembly.sol#L6) is never initialized. It is used in:
	- [UseOfAssembly.deposit()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssembly/UseOfAssembly.sol#L8-L17)
	- [UseOfAssembly.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssembly/UseOfAssembly.sol#L19-L42)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssembly/UseOfAssembly.sol#L6


## assembly
Impact: Informational
Confidence: High
 - [ ] ID-1
[UseOfAssembly.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssembly/UseOfAssembly.sol#L19-L42) uses assembly
	- [INLINE ASM](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssembly/UseOfAssembly.sol#L24-L29)
	- [INLINE ASM](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssembly/UseOfAssembly.sol#L33-L39)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssembly/UseOfAssembly.sol#L19-L42


 - [ ] ID-2
[UseOfAssembly.deposit()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssembly/UseOfAssembly.sol#L8-L17) uses assembly
	- [INLINE ASM](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssembly/UseOfAssembly.sol#L11-L16)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssembly/UseOfAssembly.sol#L8-L17


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-3
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssembly/UseOfAssembly.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssembly/UseOfAssembly.sol#L2


