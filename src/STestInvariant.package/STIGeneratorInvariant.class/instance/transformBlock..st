accessing
transformBlock: aBlock
	| node nodeToAdd2 |
	node := RBParser parseExpression: aBlock printString.
	node body temporaries size < node body statements size 
	ifTrue: [ 
		| nodeToAdd1 |
		node body temporaries isEmpty ifTrue: [ node body temporaries: OrderedCollection new ].
		node body temporaries add: (RBParser parseExpression: '__result').
		nodeToAdd1 := RBParser parseExpression: ('__result:=0').
		nodeToAdd1 value: node statements last.
		node statements removeLast.
		node body addNode: nodeToAdd1.
	].
	nodeToAdd2 := RBParser parseExpression: '^ self analyze: thisContext'.
	node body addNode: nodeToAdd2.
	"node body addNode: (RBParser parseExpression: '^ self numInvariants: thisContext')."
	^ node.