"
Description
--------------------

Simple session for the TouchTablePoker. I save the root component to help with the application management. Each components will be able to access the root component via myself.

Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	rootComponent:		<aComponent>		The root component of the demo. Should be an instance of the root component of the application.

"
Class {
	#name : #ASDTTPSession,
	#superclass : #WASession,
	#instVars : [
		'rootComponent'
	],
	#category : #'AsdTouchTablePoker-WebApp-Core'
}

{ #category : #accessing }
ASDTTPSession >> rootComponent [
	^ rootComponent
]

{ #category : #accessing }
ASDTTPSession >> rootComponent: aRootComponent [
	rootComponent := aRootComponent
]
