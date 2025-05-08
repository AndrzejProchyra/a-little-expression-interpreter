Class {
	#name : 'EConstant',
	#superclass : 'EExpression',
	#instVars : [
		'value'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'public access' }
EConstant >> evaluate [

	^ value
]

{ #category : 'accessing' }
EConstant >> value: anInteger [

	value := anInteger
]
