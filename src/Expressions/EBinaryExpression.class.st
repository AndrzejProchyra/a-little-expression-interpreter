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

{ #category : 'accessing' }
EBinaryExpression >> right: anExpression [

	right := anExpression
]
