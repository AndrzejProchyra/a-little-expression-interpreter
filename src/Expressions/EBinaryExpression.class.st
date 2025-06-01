Class {
	#name : 'EBinaryExpression',
	#superclass : 'EExpression',
	#instVars : [
		'left',
		'right'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'testing' }
EBinaryExpression class >> isAbstract [

	^ self == EBinaryExpression
]

{ #category : 'as yet unclassified' }
EBinaryExpression >> evaluateWith: aBindingDictionary [
	^ self subclassResponsibility
]

{ #category : 'accessing' }
EBinaryExpression >> left: anExpression [

	left := anExpression
]

{ #category : 'as yet unclassified' }
EBinaryExpression >> operatorString [

	^ self subclassResponsibility
]

{ #category : 'printing' }
EBinaryExpression >> printOn: aStream [

	aStream
		nextPut: $(;
		print: left;
		nextPutAll: self operatorString;
		print: right;
		nextPut: $)
]

{ #category : 'accessing' }
EBinaryExpression >> right: anExpression [

	right := anExpression
]
