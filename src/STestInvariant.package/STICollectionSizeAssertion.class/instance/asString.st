converting
asString 
	^ super asString, valueAssert storeString, ' size = ', comparableValue storeString 