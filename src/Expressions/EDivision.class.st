Class {
	#name : 'EDivision',
	#superclass : 'EBinaryExpression',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'accessing' }
EDivision >> evaluate [

	^ left evaluate / right evaluate
]

{ #category : 'accessing' }
EDivision >> operatorString [

	^ ' / '
]
