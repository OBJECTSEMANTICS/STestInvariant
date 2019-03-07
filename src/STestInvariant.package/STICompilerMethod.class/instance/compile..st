compiling
compile: aBlock
	self class compile: ('compiledTest
		',aBlock body formattedCode)