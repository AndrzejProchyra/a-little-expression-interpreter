Class {
	#name : 'EDivision',
	#superclass : 'EBinaryExpression',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'instance creation' }
EDivision class >> left: anExpression right: anotherExpression [
	"create an instance"

	^ self new
		  left: anExpression;
		  right: anotherExpression;
		  yourself
]

{ #category : 'accessing' }
EDivision >> evaluate [

	^ left evaluate / right evaluate
]

{ #category : 'accessing' }
EDivision >> operatorString [

	^ ' / '
]
