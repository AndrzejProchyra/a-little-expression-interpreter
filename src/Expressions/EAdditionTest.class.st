Class {
	#name : 'EAdditionTest',
	#superclass : 'TestCase',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'tests' }
EAdditionTest >> testEvaluate [

	self
		assert: (EAddition fivePlusThree evaluateWith: Dictionary new)
		equals: 8
]

{ #category : 'tests' }
EAdditionTest >> testEvaluateWithNegation [

	| ep1 ep2 |
	ep1 := ENegation expression: EConstant constant5.
	ep2 := EConstant constant3.
	self
		assert: ((EAddition new
				  right: ep1;
				  left: ep2) evaluateWith: Dictionary new)
		equals: -2
]

{ #category : 'tests' }
EAdditionTest >> testNegated [

	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	self
		assert: ((EAddition new
				  right: ep1;
				  left: ep2) negated evaluateWith: Dictionary new)
		equals: -8
]

{ #category : 'tests' }
EAdditionTest >> testPrinting [

	self assert: EAddition fivePlusThree printString equals: '(5 + 3)'.
	self
		assert: EAddition fivePlusThree negated printString
		equals: '-(5 + 3)'
]
