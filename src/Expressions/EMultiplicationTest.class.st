Class {
	#name : 'EMultiplicationTest',
	#superclass : 'TestCase',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'tests' }
EMultiplicationTest >> testEvaluate [

	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self
		assert: ((EMultiplication new
				  right: ep1;
				  left: ep2) evaluateWith: nil)
		equals: 15
]

{ #category : 'tests' }
EMultiplicationTest >> testEvaluateNegated [

	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self
		assert: ((EMultiplication new
				  right: ep1;
				  left: ep2) negated evaluateWith: nil)
		equals: -15
]

{ #category : 'tests' }
EMultiplicationTest >> testEvaluateWithClassCreationMessage [

	| ep1 ep2 |
	ep1 := EConstant value: 5.
	ep2 := EConstant value: 3.
	self
		assert: ((EMultiplication left: ep1 right: ep2) evaluateWith: nil)
		equals: 15
]

{ #category : 'tests' }
EMultiplicationTest >> testPrinting [

	self
		assert: EMultiplication fiveTimesThree printString
		equals: '(5 * 3)'
]
