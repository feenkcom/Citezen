*CitezenForGlamorousToolkit
gtEntriesFor: aView
	<gtView>
	^ aView columnedList
		title: 'Entries';
		items: [ self entries ];
		column: 'Index'
			text: [ :each :index | index asRopedText foreground: Color gray ]
			width: 45;
		column: 'Value' text: [ :each | each gtDisplayString ]