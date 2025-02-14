*CitezenForGlamorousToolkit
gtFieldsFor: aView
	<gtView>
	^ aView columnedList
		title: 'Fields';
		priority: 20;
		items: [ [ self rawAssociations asDictionary ] value associations
				sort: (#key collatedBy: #gtDisplayString) ];
		column: 'Key'
			text: [ :each | each key gtDisplayString ]
			width: 100;
		column: 'Value' text: [ :each | each value gtDisplayString ]