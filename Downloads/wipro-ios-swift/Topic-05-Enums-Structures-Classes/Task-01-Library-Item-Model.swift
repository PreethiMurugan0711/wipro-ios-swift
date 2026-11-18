enum BookStatus {
    case available
    case borrowed(by: String, dueIns: Int)
    case reserved(for: String)

    var label: String {
        switch self {
        case .available:
            return "Available"

        case .borrowed(let name, let days):
            return "Borrowed by \(name), due in \(days) days"

        case .reserved(let name):
            return "Reserved for \(name)"
        }
    }
}

struct Book {
    var title: String
    var status: BookStatus = .available
}

class Member {
    var name: String
    var borrowedBooks: [String]

    init(name: String, borrowedBooks: [String] = []) {
        self.name = name
        self.borrowedBooks = borrowedBooks
    }
}

print("----- Library Book Details -----")

var book1 = Book(title: "Swift Programming")

print("Book: \(book1.title)")
print("Status: \(book1.status.label)")

var book2 = book1

book2.status = .borrowed(by: "Preethi", dueIns: 7)

print("\n----- Struct Copy Demonstration -----")

print("Original Book: \(book1.title)")
print("Original Status: \(book1.status.label)")

print("Copied Book: \(book2.title)")
print("Copied Status: \(book2.status.label)")

print("\n----- Class Reference Demonstration -----")

let member1 = Member(name: "Preethi", borrowedBooks: ["Swift Programming"])

let member2 = member1

member2.name = "Lavanya"

print("Member 1 Name: \(member1.name)")
print("Member 2 Name: \(member2.name)")

print("Member 1 Books: \(member1.borrowedBooks)")
print("Member 2 Books: \(member2.borrowedBooks)")