converting
asString 
	^ super asString, '( ', valueAssert storeString, ' allSatisfy: [:element | element className = ', comparableValue storeString, '])'