as yet unclassified
generateInvariants: aBlock
	| invariants |
	compiler compile: (self transformBlock: aBlock).
	invariants := compiler executeMethodTest.
	self generateAssert: invariants.
	^ invariants
	
	