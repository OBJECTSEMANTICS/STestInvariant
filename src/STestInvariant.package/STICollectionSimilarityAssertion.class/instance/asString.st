converting
asString 
	^ super asString, '( ', valueAssert storeString, ' allButFirst anySatisfy: [:element | element = ', comparableValue asString, '])'