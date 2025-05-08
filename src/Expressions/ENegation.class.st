Class {
	#name : 'ENegation',
	#superclass : 'EExpression',
	#instVars : [
		'expression'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'public access' }
ENegation >> evaluate [

	^ expression evaluate negated
]

{ #category : 'accessing' }
ENegation >> expression: anExpression [

	expression := anExpression
]
