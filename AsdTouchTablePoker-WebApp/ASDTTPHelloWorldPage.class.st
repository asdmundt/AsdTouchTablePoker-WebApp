"
Description
--------------------

TODO
"
Class {
	#name : #ASDTTPHelloWorldPage,
	#superclass : #ASDTTPPage,
	#category : #'AsdTouchTablePoker-WebApp-Pages'
}

{ #category : #accessing }
ASDTTPHelloWorldPage class >> pageName [
	^ 'Hello world'
]

{ #category : #accessing }
ASDTTPHelloWorldPage class >> priority [
	^ 1
]

{ #category : #rendering }
ASDTTPHelloWorldPage >> renderContentOn: html [
	html div style: 'min-height: 400px;'; with: 'Hello world'
]
