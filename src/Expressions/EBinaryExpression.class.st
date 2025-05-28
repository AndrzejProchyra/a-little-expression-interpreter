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

{ #category : 'accessing' }
EBinaryExpression >> left: anExpression [

	left := anExpression
]

{ #category : 'as yet unclassified' }
EBinaryExpression >> operatorString [

	self subclassResponsibility
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
