Class {
	#name : 'EDivisionTest',
	#superclass : 'TestCase',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'tests' }
EDivisionTest >> testEvaluate [

	self
		assert:
			((EDivision left: EConstant constant5 right: EConstant constant3)
				 evaluateWith: Dictionary new)
		equals: 5 / 3
]

{ #category : 'tests' }
EDivisionTest >> testPrinting [

	self
		assert:
			(EDivision left: EConstant constant5 right: EConstant constant3)
				printString
		equals: '(5 / 3)'
]
