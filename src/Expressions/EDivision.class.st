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
EDivision >> evaluateWith: aBindingDictionary [

	^ (left evaluateWith: aBindingDictionary)
	  / (right evaluateWith: aBindingDictionary)
]

{ #category : 'accessing' }
EDivision >> operatorString [

	^ ' / '
]
