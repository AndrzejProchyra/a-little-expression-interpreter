Class {
	#name : 'EExpression',
	#superclass : 'Object',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'arithmetic' }
EExpression >> negated [

	^ ENegation new expression: self
]
