**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [solc-version](#solc-version) (1 results) (Informational)
 - [immutable-states](#immutable-states) (3 results) (Optimization)
## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-0
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretMinimalFixed/ImproperPrivateVariableSecretMinimalFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretMinimalFixed/ImproperPrivateVariableSecretMinimalFixed.sol#L2


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-1
[ImproperPrivateVariableInitialization.fee](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretMinimalFixed/ImproperPrivateVariableSecretMinimalFixed.sol#L10) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretMinimalFixed/ImproperPrivateVariableSecretMinimalFixed.sol#L10


 - [ ] ID-2
[ImproperPrivateVariableInitialization._secretNumber](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretMinimalFixed/ImproperPrivateVariableSecretMinimalFixed.sol#L9) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretMinimalFixed/ImproperPrivateVariableSecretMinimalFixed.sol#L9


 - [ ] ID-3
[ImproperPrivateVariableInitialization._owner](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretMinimalFixed/ImproperPrivateVariableSecretMinimalFixed.sol#L7) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretMinimalFixed/ImproperPrivateVariableSecretMinimalFixed.sol#L7


