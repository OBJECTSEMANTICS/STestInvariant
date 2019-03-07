baselines
baseline: spec
	<baseline>
	spec for: #common 
	do: [ 
		spec 
		package: 'STestInvariant';
		package: 'STestInvariant-Tests' with: [ spec requires: 'STestInvariant' ]
	]