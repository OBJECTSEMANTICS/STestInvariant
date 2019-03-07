as yet unclassified
applyRule: aName to: aValue
	|invariants| 
	invariants := OrderedCollection new.
	STIAssertion allSubclasses do:[ :rule |
		invariants addAll: (rule applyOn: aName with: aValue).
	].
	^ invariants 