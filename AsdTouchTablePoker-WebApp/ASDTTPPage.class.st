"
Description
--------------------

I am an abstract component. My subclasses represent the main pages of the application.

Each page should have a name that will be used in the URLs and a priority for the menus.
"
Class {
	#name : #ASDTTPPage,
	#superclass : #ASDTTPComponent,
	#category : #'AsdTouchTablePoker-WebApp-Core'
}

{ #category : #testing }
ASDTTPPage class >> isAbstract [
	^ self = ASDTTPPage
]

{ #category : #accessing }
ASDTTPPage class >> pageName [
	"Title of the page that will be used in menus and URLs."

	^ self subclassResponsibility
]

{ #category : #accessing }
ASDTTPPage class >> pagesToDisplay [
	^ (self allSubclasses reject: #isAbstract) sorted: #priority ascending
]

{ #category : #accessing }
ASDTTPPage class >> pathName [
	"Use to define the URL name"

	^ self pageName copyWithout: $  
]

{ #category : #accessing }
ASDTTPPage class >> priority [
	^ self subclassResponsibility
]

{ #category : #accessing }
ASDTTPPage >> pathName [
	^ self class pathName
]
