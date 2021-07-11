accessing
openSwitchVisualizationMenu

	| builder spec |
	
	builder := ToolBuilder default.
	
	spec := builder pluggableMenuSpec new
		model: self;
		label: 'Select a visualization'.
		
	self usableVisualizations do: [:visualization |
		spec add: visualization name
			target: self
			selector: #switchToVisualization:
			argumentList: (Array with: visualization)].
	
	builder open: (spec buildWith: builder)