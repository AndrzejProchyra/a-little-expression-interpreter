Class {
	#name : 'EPowerTest',
	#superclass : 'TestCase',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'tests' }
EPowerTest >> testEvaluate [

	self
		assert:
			(EPower base: EConstant constant5 exponent: EConstant constant3)
				evaluate
		equals: 125
]

{ #category : 'tests' }
EPowerTest >> testPrinting [

	self
		assert:
			(EPower base: EConstant constant5 exponent: EConstant constant3)
				printString
		equals: '(5 ^ 3)'
]
