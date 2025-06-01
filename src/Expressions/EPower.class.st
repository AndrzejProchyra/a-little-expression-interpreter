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
EPower class >> evaluateWith: aBindingDictionary [
	self shouldBeImplemented.
]

{ #category : 'initialization' }
EPower >> evaluateWith: aBindingDictionary [

	^ (left evaluateWith: aBindingDictionary) raisedTo:
		  (right evaluateWith: aBindingDictionary)
]

{ #category : 'as yet unclassified' }
EPower >> operatorString [

	^ ' ^ '
]
