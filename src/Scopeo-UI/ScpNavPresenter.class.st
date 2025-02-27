Class {
	#name : #ScpNavPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'prevStmt',
		'nextStmt',
		'start',
		'end',
		'steppingModel'
	],
	#category : #'Scopeo-UI-MainPresenters'
}

{ #category : #layout }
ScpNavPresenter >> defaultLayout [

	^ SpBoxLayout newHorizontal
		add: prevStmt;
		add: nextStmt;
		add: start;
		add: end;
		yourself 
]

{ #category : #initialization }
ScpNavPresenter >> initializePresenters [

	prevStmt := self newButton
		label: 'Prev. Statement';
		icon: (self iconNamed: #glamorousUp);
		action: [ steppingModel stepToPrevStatement ];
		yourself.
		
	nextStmt := self newButton
		label: 'Next. Statement';
		icon: (self iconNamed: #glamorousDown);
		action: [ steppingModel stepToNextStatement ];
		yourself.
	
	start := self newButton
		label: 'Start';
		icon: (self iconNamed: #smallHome);
		action: [ steppingModel stepToStart ];
		yourself.

	end := self newButton 
		label: 'End';
		icon: (self iconNamed: #glamorousSpawn);
		action: [ steppingModel stepToEnd ];
		yourself.
]

{ #category : #accessing }
ScpNavPresenter >> steppingModel: aSteppingModel [

	steppingModel := aSteppingModel
]
