preconditions
preconditionChecking: aObject
	^ aObject isCollection and: [ [
		| classFirstElement |
		classFirstElement := aObject first class. 
		aObject allButFirst allSatisfy: [ :element | element class = classFirstElement ]
		] on: Error do: [ false ]
	]