class Person {
    var name: String
    var apartment: Apartment?

    init(name: String) {
        self.name = name
    }

    deinit {
        print("Person \(name) destroyed")
    }
}

class Apartment {
    var unit: String
    weak var tenant: Person?

    init(unit: String) {
        self.unit = unit
    }

    deinit {
        print("Apartment \(unit) destroyed")
    }
}

var person: Person? = Person(name: "Preethi")
var apartment: Apartment? = Apartment(unit: "A101")

person?.apartment = apartment
apartment?.tenant = person

person = nil
apartment = nil

print("Program finished")