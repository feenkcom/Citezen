*CitezenForGlamorousToolkit
at: aSymbol ifPresent: aOneArgumentBlock ifAbsent: aBlock
	| index |
	index := fields findFirst: [ :each | each key = aSymbol ].
	^ index = 0
		ifTrue: [ aBlock value ]
		ifFalse: [ aOneArgumentBlock value: (fields at: index) ]