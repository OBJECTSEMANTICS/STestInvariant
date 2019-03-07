testing
analyze: aContext
	| invariants |
	invariants := OrderedCollection new.
	aContext tempNames doWithIndex: [ :title :index | 
		invariants addAll: (evaluator applyRule: title to: (aContext namedTempAt: index)).
	].
	^ invariants