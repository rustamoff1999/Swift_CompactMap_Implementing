# Swift compactMap(_ :) and compactMapValues(: _) Functions Implementing

## Introduction
### Using the _compactMap()_ Function with Collections
The _compactMap()_ function returns an _**array**_ containing the _**non-nil**_ results of calling the given transformation with each element of this sequence.  
Use this method to receive an array of _non-optional_ values when your transformation produces an _optional value_.
### Using the _compactMapValues()_ Function with Dictionaries
Returns a new _**dictionary**_ containing only the key-value pairs that have _**non-nil**_ values as the result of transformation by the given closure.  
Use this method to receive a dictionary with _non-optional_ values when your transformation produces _optional values_.
## About My Implementation
Here is my own **_Swift compactMap() and compactMapValues() Functions Implementation_**, that can be used with _**Collections**_ and _**Dictionaries**_ respectively.  
In this project I used _extensions_ for _Collections_ and _Dictionaries_ for creating _myCompactMap()_ and _myCompactValues()_ functions respectively in there, which are my own implementations of "official" _compactMap()_ and _compactMapValues()_ functions. _myCompactMap()_ and _myCompactMapValues_ are declared as _Generic_.  
You can see some examples in my code if something remains unclear to you.
## References
* [compactMap(_:)](https://developer.apple.com/documentation/musickit/musicitemcollection/compactmap(_:)/)
* [compactMapValues(_:)](https://developer.apple.com/documentation/swift/dictionary/3081323-compactmapvalues/)
## Contacts
* [Linkedin](https://www.linkedin.com/in/fuad-rustamov-8133b4190/)
