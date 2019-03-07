as yet unclassified
test1
		self assert: #(2 3) size = 2.
self
	assert: (#(2 3) allSatisfy: [ :element | element className = 'SmallInteger' ])