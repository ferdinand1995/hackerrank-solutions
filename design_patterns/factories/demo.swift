import Foundation

protocol HotDrink {
    func consume()
}

class Tea: HotDrink {

    func consume() {
        print("this tea is nice but i'd prefer it with lemon")
    }
}

class Coffee: HotDrink {

    func consume() {
        print("this coffee is delicious!")
    }
}

protocol HotDrinkFactory {
    init()
    func prepare(amount: Int) -> HotDrink
}

class TeaFactory {

    required init() { }
    func prepare(amount: Int) -> HotDrink {
        print("put in tea bag, boil water, pour \(amount)ml, add lemon, enjoy!")
        return Tea()
    }
}

class Factory {

    required init() { }
    func prepare(amount: Int) -> HotDrink {
        print("grind some beans, boil water, pour \(amount)ml, add cream and sugar, enjoy!")
        return Coffee()
    }
}

class HotDrinkMachine {
    enum AvailableDrink: String {
        case coffee = "Coffee"
        case tea = "Tea"

        static let all = [coffee, tea]
    }

    internal var factories = [AvailableDrink: HotDrinkFactory]()

    internal var namedFactories = [(String, HotDrinkFactory)]()

    init() {
        for drink in AvailableDrink.all {
            let type = NSClassFromString("demo.\(drink.rawValue)Factory")
            let factory = (type as! HotDrinkFactory.Type).init()
            factories[drink] = factory
            namedFactories.append((drink.rawValue, factory))
        }
    }

    func makeDrink() -> HotDrink {
        print("Available drinks:")
        for i in 0..<namedFactories.count {
            let tuple = namedFactories[i]
            print("\(i): \(tuple.0)")
        }
        
        let input = Int(readLine()!)!
        return namedFactories[input].1.prepare(amount: 250)
    }
}

func main() {
    let machine = HotDrinkMachine()
    print(machine.namedFactories.count)
    let drink = machine.makeDrink()
    drink.consume()
}

main()