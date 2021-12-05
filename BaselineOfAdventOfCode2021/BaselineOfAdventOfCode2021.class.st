Class {
	#name : #BaselineOfAdventOfCode2021,
	#superclass : #BaselineOf,
	#category : #BaselineOfAdventOfCode2021
}

{ #category : #baselines }
BaselineOfAdventOfCode2021 >> anotherCase: spec [
	spec
		baseline: 'AnotherCase' with: [ spec repository: 'github://dvmason/AnotherCase:main' ]

]

{ #category : #baselines }
BaselineOfAdventOfCode2021 >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
		"Dependencies"
			self
				anotherCase: spec;
				functional: spec.
		"Packages"
			spec
				package: #AdventOfCode2021;
				package: 'AdventOfCode2021-Tests'  with: [ spec requires: #(AdventOfCode2021) ]
		]
]

{ #category : #baselines }
BaselineOfAdventOfCode2021 >> functional: spec [
	spec
		baseline: 'PharoFunctional' with: [ spec repository: 'github://dvmason/Pharo-Functional' ]
]
