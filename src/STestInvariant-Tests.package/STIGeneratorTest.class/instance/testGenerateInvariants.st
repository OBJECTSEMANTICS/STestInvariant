tests
testGenerateInvariants
	| invariants |
	invariants := generator generateInvariants: [ #(2 3) ].
	self assert: invariants size equals: 2.
	self assertCollection: (invariants collect: [:i | i class]) hasSameElements: {STICollectionSizeAssertion. STICollectionTypeSimilarityAssertion }.
	
	invariants := generator
		generateInvariants: [ | a |
			a := #(2 3) ].
	self assert: invariants size equals: 2.
	
	invariants := generator
		generateInvariants: [ | a b |
			b := 9.
			a := { b. 9. 5 } ].
	self assert: invariants size equals: 3.
	self assertCollection: (invariants collect: [:i | i class]) hasSameElements: {STICollectionSizeAssertion. STICollectionTypeSimilarityAssertion. STICollectionSimilarityAssertion }.
	
	invariants := generator
		generateInvariants: [ | a b |
			a := #(2 3).
			b := #(4 5).
			a , b ].
	self assert: invariants size equals: 6.
	
	invariants := generator
		generateInvariants: [ | a b x |
			a := #(1 4).
			b := #(6 1).
			x := a , b ].
	self assert: invariants size equals: 7