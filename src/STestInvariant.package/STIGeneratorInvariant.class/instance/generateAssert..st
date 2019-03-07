as yet unclassified
generateAssert: aCollection
	| node |
	node := RBParser parseExpression: '[]'.
	aCollection ifNotEmpty: [ 
		aCollection asSet do: [ :invariant | 
			node body addNode: (RBParser parseExpression: invariant asString).	
		].
		STIEvaluatorTest compile: 'test', self class numTest asString, '
		', node body formattedCode.
		self class incrementNumTest 
	].