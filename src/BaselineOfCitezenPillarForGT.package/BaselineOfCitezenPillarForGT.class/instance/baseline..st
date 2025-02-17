as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'pillarExporter'
				with: [ spec
						repository: 'github://pillar-markup/pillar:v8.2.7/src';
						className: 'BaselineOfPillarApp';
						loads: #('Pillar-ExporterPillar') ].
			spec
				package: 'Citezen-Model';
				package: 'Citezen-Pillar'
					with: [ spec requires: 'Citezen-Model'.
						spec requires: #pillarExporter ] ]