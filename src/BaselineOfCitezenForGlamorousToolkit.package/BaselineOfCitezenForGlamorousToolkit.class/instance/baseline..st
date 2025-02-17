baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'Citezen-Model';
				package: 'Citezen-Parsers' with: [ spec requires: 'Citezen-Model' ];
				package: 'Citezen-Rendering' with: [ spec requires: 'Citezen-Model' ];
				package: 'Citezen-Tools' with: [ spec requires: 'Citezen-Model' ];
				package: 'Citezen-Query' with: [ spec requires: 'Citezen-Model' ] ]