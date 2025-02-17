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
				package: 'Citezen-Pillar' with: [ spec requires: #pillarExporter ];
				package: 'Citezen-Parsers'
					with: [ spec requires: #('Citezen-Model' 'SmaCC') ];
				package: 'Citezen-Rendering' with: [ spec requires: 'Citezen-Model' ];
				package: 'Citezen-Tools' with: [ spec requires: 'Citezen-Model' ];
				package: 'Citezen-Query' with: [ spec requires: 'Citezen-Model' ] ]