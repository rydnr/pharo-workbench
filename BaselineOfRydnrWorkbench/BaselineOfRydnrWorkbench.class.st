Class {
	#name : #BaselineOfRydnrWorkbench,
	#superclass : #BaselineOf,
	#category : #BaselineOfRydnrWorkbench
}

{ #category : #baselines }
BaselineOfRydnrWorkbench >> baseline: aSpec [
	<baseline>
	aSpec
		for: #common
		do: [ aSpec blessing: #baseline.
			self declarePackagesIn: aSpec ]
]

{ #category : #baselines }
BaselineOfRydnrWorkbench >> declarePackagesIn: aSpec [
	aSpec package: 'Rydnr-Workbench-Misc'.
	^ aSpec
]
