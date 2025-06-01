Class {
	#name : 'EVariableTest',
	#superclass : 'TestCase',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'tests' }
EVariableTest >> testPrinting [

	self assert: (EVariable new id: #x) printString equals: 'x'
]

{ #category : 'tests' }
EVariableTest >> testValueOfX [

	self
		assert:
		((EVariable new id: #x) evaluateWith: { (#x -> 10) } asDictionary)
		equals: 10
]
