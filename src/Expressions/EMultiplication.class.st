Class {
	#name : 'EMultiplication',
	#superclass : 'EBinaryExpression',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'as yet unclassified' }
EMultiplication class >> fiveTimesThree [

	<sampleInstance>
	^ self left: EConstant constant5 right: EConstant constant3
]

{ #category : 'instance creation' }
EMultiplication class >> left: leftExpression right: rightExpression [

	^ self new
		  left: leftExpression;
		  right: rightExpression;
		  yourself
]

{ #category : 'public access' }
EMultiplication >> evaluateWith: aBindingDictionary [

	^ (left evaluateWith: aBindingDictionary)
	  * (right evaluateWith: aBindingDictionary)
]

{ #category : 'as yet unclassified' }
EMultiplication >> operatorString [

	^ ' * '
]
