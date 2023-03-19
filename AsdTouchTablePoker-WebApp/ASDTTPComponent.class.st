"
Description
--------------------

Abstract superclass of all Seaside components of TouchTablePoker. 

I provide some conveniance methods to be used during the redering of the components.
"
Class {
	#name : #ASDTTPComponent,
	#superclass : #WAComponent,
	#category : #'AsdTouchTablePoker-WebApp-Core'
}

{ #category : #convenience }
ASDTTPComponent >> display: aComponentInstance [
	"Set a component instance as the component to display by the root component."

	self rootComponent componentToDisplay: aComponentInstance
]

{ #category : #convenience }
ASDTTPComponent >> displayInstanceOf: aComponentClass [
	"Set a component class as the component to display by the root component."

	self rootComponent displayInstanceOf: aComponentClass
]

{ #category : #accessing }
ASDTTPComponent >> rootComponent [
	^ self session rootComponent
]
