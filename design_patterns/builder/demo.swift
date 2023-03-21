import Foundation

class HtmlElement: CustomStringConvertible {
    var name = ""
    var text = ""
    var elements = [HtmlElement]()

    private let indentSize = 2
    init() { }
    init(name: String, text: String) {
        self.name = name
        self.text = text
    }
    private func description(_ indent: Int) -> String {
        var result = ""
        let i = String(repeating: " ", count: indent)
        result += "\(i)<\(name)>\n"

        if !text.isEmpty {
            result += String(repeating: " ", count: (indent + 1))
            result += text
            result += "\n"
        }
        
        for e in elements {
            result += e.description(indent+1)
        }

        result += "\(i)</\(name)>\n"
        return result
    }

    public var description: String {
        return description(0)
    }
}

class HtmlBuilder: CustomStringConvertible {
    private let rootName: String
    var root = HtmlElement()

    init(rootName: String) {
        self.rootName = rootName
        root.name = rootName
    }

    func addChild(name: String, text: String) {
        let e = HtmlElement(name: name, text: text)
        root.elements.append(e)
    }

    func addChildFluent(_ name: String, _ text: String) -> Self {
        let e = HtmlElement(name: name, text: text)
        root.elements.append(e)
        return self
    }

    var description: String {
        return root.description
    }

    func clear() {
        root = HtmlElement(name: rootName, text: "")
    }
}

func main() {
/* common builder
    let hello = "hello"
    var result = "<p>\(hello)</p>"
    print(result)

    let words = ["hello", "world"]
    result = "<ul>\n"

    for word in words {
        result.append("<li>\(word)</li>\n")
    }
    result.append("</ul>")
    print(result)

    let builder = HtmlBuilder(rootName: "ul")
    /* 
    builder.addChild(name: "li", text: "hello")
    builder.addChild(name: "li", text: "world")
    */
    builder.addChildFluent("li", "hello").addChildFluent("li", "world")
    print(builder)
    */
    /* Faceted Builder*/
    let pb = PersonBuilder()
    let p = pb.lives.at("123 London Road")
    .inCity("London")
    .withPostalCode("SW12BC")
    .works.at("Fabrikam")
    .asA("Engineer")
    .earning(123000)
    .build()

    print(p)
}

main()

 class Person: CustomStringConvertible {
    // address
    var streetAddress = "", postCode = "", city = ""

    // employment
    var companyName = "", position = ""
    var annualIncome = 0

    var description: String {
        return "I live at \(streetAddress), \(postCode), \(city)." + 
        "I work at \(companyName) as a \(position), earning \(annualIncome)."
    }

}

class PersonBuilder {
    var person = Person()
    var lives: PersonAddressBuilder {
        return PersonAddressBuilder(person)
    }

    var works: PersonJobBuilder {
        return PersonJobBuilder(person)
    }

    func build() -> Person {
        return person
    }
}

class PersonAddressBuilder: PersonBuilder {
    internal init(_ person: Person) {
        super.init()
        self.person = person
    }

    func at(_ streetAddress: String) -> Self {
        person.streetAddress = streetAddress
        return self
    }

    func withPostalCode(_ postCode: String) -> Self {
        person.postCode = postCode
        return self
    }

    func inCity(_ city: String) -> Self {
        person.city = city
        return self
    }
}

class PersonJobBuilder: PersonBuilder {
    internal init(_ person: Person) {
        super.init()
        self.person = person
    }

    func at(_ companyName: String) -> Self {
        person.companyName = companyName
        return self
    }

    func asA(_ position: String) -> Self {
        person.position = position
        return self
    }

    func earning(_ annualIncome: Int) -> Self {
        person.annualIncome = annualIncome
        return self
    }
}
