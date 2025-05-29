Class {
	#name : 'EPower',
	#superclass : 'EBinaryExpression',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'as yet unclassified' }
EPower class >> base: anExpression exponent: anExpression2 [

	^ self new
		  left: anExpression;
		  right: anExpression2;
		  yourself
]

{ #category : 'public access' }
EPower class >> evaluate [
	self shouldBeImplemented.
]

{ #category : 'initialization' }
EPower >> evaluate [

	^ left evaluate raisedTo: right evaluate
]

{ #category : 'as yet unclassified' }
EPower >> operatorString [

	^ ' ^ '
]
