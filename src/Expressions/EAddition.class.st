Class {
	#name : 'EAddition',
	#superclass : 'EBinaryExpression',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'as yet unclassified' }
EAddition class >> fivePlusThree [

	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	^ self new
		  left: ep1;
		  right: ep2
]

{ #category : 'public access' }
EAddition >> evaluateWith: aBindingDictionary [

	^ (left evaluateWith: aBindingDictionary)
	  + (right evaluateWith: aBindingDictionary)
]

{ #category : 'as yet unclassified' }
EAddition >> operatorString [

	^ ' + '
]
