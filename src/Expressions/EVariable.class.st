Class {
	#name : 'EVariable',
	#superclass : 'EExpression',
	#instVars : [
		'id'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'accessing' }
EVariable >> evaluateWith: aBindingDictionary [

	^ aBindingDictionary at: id
]

{ #category : 'accessing' }
EVariable >> id: aSymbol [

	id := aSymbol
]

{ #category : 'printing' }
EVariable >> printOn: aStream [

	aStream nextPutAll: id asString
]
