import Foundation

//:**compactMap(: _) My Implementation**
extension Collection {
    func myCompactMap<Transformed>(_ someClosure: (Element) -> Transformed?) -> [Transformed] {
        var compactMapped: [Transformed] = []
        
        for element in self {
            let transformedElement: Transformed? = someClosure(element)
            guard transformedElement != nil else {
                continue
            }
            compactMapped.append(transformedElement!)
        }
        return compactMapped
    }
}
//:**compactMapValues(: _) My Implementation**
extension Dictionary {
    func myCompactMapValues<Transformed>(_ someClosure: (Self.Value) -> Transformed?)->[Self.Key: Transformed] {
        var compactMapped: [Self.Key: Transformed] = [:]
        guard self.isEmpty == false else {
            return [:]
        }
        for key in self.keys {
            let transformedElement: Transformed? = someClosure(self[key]!)
            guard transformedElement != nil else {
                continue
            }
            compactMapped[key] = transformedElement
        }
        return compactMapped
    }
}
//:**Working with Collections**

//let stringElements: Array  = ["23", "5", "Four", "321"]
let stringElements  :  Set   = ["23", "5", "Four", "321"]

//:*Example of Swift Implementation*

let swiftImplementation = stringElements.compactMap({ (element: String) -> Int? in return Int(element)})
print(swiftImplementation)

//:*Example of My Implementation*

let myImplementation = stringElements.myCompactMap( {element in return Int(element)} )
print(myImplementation)

//:**Working with Dictionaries**

let stringDictionary : [String: String] = ["First": "23", "Second": "5", "Third": "Four", "Forth": "321"]
//let stringDictionary: [Int: Double] = [:]

//:*Example of Swift Implementation*

let swiftImplementationDictionary = stringDictionary.compactMapValues({ element -> Int? in return Int(element)})
print(swiftImplementationDictionary)

//:*Example of My Implementation*

let myImplementationDictionary = stringDictionary.myCompactMapValues({ element in return Int(element) })
print(myImplementationDictionary)
