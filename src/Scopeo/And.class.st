Class {
	#name : #And,
	#superclass : #ScpBinaryBooleanPredicate,
	#category : #'Scopeo-Predicates'
}

{ #category : #'target resize' }
And >> verify: aEvent scope: aScope events: aProgramEvents [

	^ (left verify: aEvent scope: aScope events: aProgramEvents) and: [
		  right verify: aEvent scope: aScope events: aProgramEvents ]
]
