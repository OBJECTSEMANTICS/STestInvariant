as yet unclassified
test0
		self
	assert: (#(2 3) allSatisfy: [ :element | element className = 'SmallInteger' ]).
self assert: #(2 3) size = 2