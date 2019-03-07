as yet unclassified
test3
		self
	assert:
		(#(2 3 4 5)
			allSatisfy: [ :element | element className = 'SmallInteger' ]).
self
	assert: (#(4 5) allSatisfy: [ :element | element className = 'SmallInteger' ]).
self assert: #(2 3) size = 2.
self assert: #(4 5) size = 2.
self assert: #(2 3 4 5) size = 4.
self
	assert: (#(2 3) allSatisfy: [ :element | element className = 'SmallInteger' ])