/*
Builder Coding Exercise
You are asked to implement the Builder design pattern for rendering simple chunks of code.
Sample use of the builder you are asked to create:
var cb = CodeBuilder("Person").AddField("name", "String").AddField("age", "Int");
print(cb.description);
The expected output of the above code is:
class Person
{
  var name: String
  var age: Int
}
Please observe the same placement of curly braces and use two-space indentation.
*/

import Foundation

class CodeBuilder : CustomStringConvertible {
    private let rootName: String
    var root = VariableElement()

    init(_ rootName: String) {
        self.rootName = rootName
        root.name = rootName
    }
    
    func add(field name: String, ofType type: String) -> Self {
         let e = VariableElement(name, type)
        root.elements.append(e)
        return self
    }
    
    public var description: String {
        return root.description
    }

    func clear() {
        root = VariableElement(rootName, "")
    }
}

class VariableElement: CustomStringConvertible {
    var name: String = ""
    var type: String = ""
    var elements = [VariableElement]()

    private let indentSize = 2
    init() { }
    init(_ name: String, _ type: String) {
        self.name = name
        self.type = type
    }
    private func description(_ indent: Int) -> String {
        var result = ""
        let i = String(repeating: " ", count: indentSize)
        if type.isEmpty {
            result += "class \(name)\n"
            result += "{\n"
        }
        for e in elements {
            result += e.description(indent)        
        }
        if !type.isEmpty {
            result += "\(i)var \(name): \(type)\n"
        } else {
            result += "}"
        }
        return result
    }

    public var description: String {
        return description(0)
    }
}

func main() {
    let cb = CodeBuilder("Person")
    .add(field: "name", ofType: "String")
    .add(field: "age", ofType: "Int")    
    print(cb)
}

main()
