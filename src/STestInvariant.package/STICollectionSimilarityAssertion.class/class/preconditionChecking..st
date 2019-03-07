preconditions
preconditionChecking: aObject
	^ aObject isCollection and: [ [
		aObject allButFirst anySatisfy: [ :element | element = aObject first ]
		] on: Error do: [ false ]
	]
	