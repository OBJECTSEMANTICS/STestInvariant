as yet unclassified
test4
		self
	assert: (#(1 4 6 1) allButFirst anySatisfy: [ :element | element = 1 ]).
self
	assert: (#(1 4) allSatisfy: [ :element | element className = 'SmallInteger' ]).
self assert: #(1 4 6 1) size = 4.
self assert: #(6 1) size = 2.
self assert: #(1 4) size = 2.
self
	assert: (#(6 1) allSatisfy: [ :element | element className = 'SmallInteger' ]).
self
	assert:
		(#(1 4 6 1)
			allSatisfy: [ :element | element className = 'SmallInteger' ])