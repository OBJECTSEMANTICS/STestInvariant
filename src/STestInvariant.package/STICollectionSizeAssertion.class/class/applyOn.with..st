as yet unclassified
applyOn: aName with: aCollection
	| instance |
	(self preconditionChecking: aCollection) ifFalse:[ ^ #()].
	instance := self new 
	valueAssert: aCollection; 
	comparableValue: aCollection size.
	^ { instance }