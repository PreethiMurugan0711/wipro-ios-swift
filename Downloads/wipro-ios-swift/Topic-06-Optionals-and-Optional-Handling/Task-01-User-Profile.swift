struct Address {
    var city: String?
}

struct User {
    var name: String
    var age: Int?
    var address: Address?
}

func describe(_ user: User) -> String {

    // Safely unwrap age
    guard let age = user.age else {
        return "\(user.name): Age is unknown"
    }

    // Optional chaining and nil-coalescing
    let city = user.address?.city ?? "unknown city"

    return "\(user.name) is \(age) years old and lives in \(city)."
}

// User 1: Complete data
let user1 = User(
    name: "Preethi",
    age: 22,
    address: Address(city: "Coimbatore")
)

// User 2: Missing age
let user2 = User(
    name: "Lavanya",
    age: nil,
    address: Address(city: "Chennai")
)

// User 3: Missing city
let user3 = User(
    name: "Nandhini",
    age: 21,
    address: Address(city: nil)
)

print(describe(user1))
print(describe(user2))
print(describe(user3))

// Integer conversion
let number1 = Int("42")
let number2 = Int("abc")

print(number1 as Any)
print(number2 as Any)