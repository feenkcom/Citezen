*CitezenForGlamorousToolkit
gtEntriesFor: aView
	<gtView>
	^ aView columnedList
		title: 'Entries';
		items: [ self entries ];
		column: 'Index'
			text: [ :each :index | index asRopedText foreground: Color gray ]
			width: 45;
		column: 'Key'
			text: [ :each | each key ]
			width: 80;
		column: 'Type'
			text: [ :each | each type ]
			width: 80;
		column: 'Author'
			text: [ :each | 
				each
					at: 'author'
					ifPresent: #rawValue
					ifAbsent: '?' ]
			width: 150;
		column: 'Title'
			text: [ :each | 
				each
					at: 'title'
					ifPresent: #rawValue
					ifAbsent: '?' ]
			width: 200