as yet unclassified
test2
		self
	assert: (#(9 9 5) allButFirst anySatisfy: [ :element | element = 9 ]).
self
	assert:
		(#(9 9 5)
			allSatisfy: [ :element | element className = 'SmallInteger' ]).
self assert: #(9 9 5) size = 3