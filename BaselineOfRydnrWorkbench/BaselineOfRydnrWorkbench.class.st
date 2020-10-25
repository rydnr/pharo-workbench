Class {
	#name : #BaselineOfRydnrWorkbench,
	#superclass : #BaselineOf,
	#category : #BaselineOfRydnrWorkbench
}

{ #category : #baselines }
BaselineOfRydnrWorkbench >> awsSdk: spec [
	spec
		baseline: 'AWS'
		with:
			[ spec repository: 'github://newapplesho/aws-sdk-smalltalk/pharo-repository' ]
]

{ #category : #baselines }
BaselineOfRydnrWorkbench >> awsToolbox: spec [
	spec
		baseline: 'AWSToolbox'
		with: [ spec
				repository: 'github://jvdsandt/pharo-aws-toolbox/repository' ]
]

{ #category : #baselines }
BaselineOfRydnrWorkbench >> baseline: aSpec [
	<baseline>
	self awsToolbox: aSpec.
	"self awsSdk: aSpec."
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
