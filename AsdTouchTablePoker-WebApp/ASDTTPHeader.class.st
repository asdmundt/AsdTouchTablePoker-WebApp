"
Description
--------------------

I am the reader of the application.
"
Class {
	#name : #ASDTTPHeader,
	#superclass : #ASDTTPComponent,
	#category : #'AsdTouchTablePoker-WebApp-Core'
}

{ #category : #accessing }
ASDTTPHeader >> possiblePages [
	^ ASDTTPPage pagesToDisplay
]

{ #category : #rendering }
ASDTTPHeader >> renderContentOn: html [
	html mdlLayoutHeader
		waterfall;
		with: [ html
				mdlLayoutHeaderRow: [ html mdlNavigationLink
						callback: [ "Just refresh" ];
						with: [ html
								mdlLayoutTitle: 'Poker Anwendung Touchtisch' ].
					html mdlLayoutSpacer.
					html text: 'Version 0.0.0'. ].
			html
				mdlLayoutTabBar: [ self possiblePages
						do: [ :aClass | 
							html mdlLayoutTab
								callback: [ self displayInstanceOf: aClass ];
								isActiveIf: aClass = self rootComponent componentToDisplay class;
								with: aClass pageName ] ] ]
]
