let inputs = ["10", "x", "25", "", "7.5", "40"]

// Convert strings into integers and remove nil values
let validNumbers = inputs.compactMap { Int($0) }

print("Valid Integers: \(validNumbers)")

// Calculate sum
let total = validNumbers.reduce(0, +)

print("Sum: \(total)")

// Count invalid entries
let invalidCount = inputs.count - validNumbers.count

print("Invalid Entries: \(invalidCount)")

// First valid number doubled using map
let doubled = validNumbers.first.map { $0 * 2 }

print("First Valid Number Doubled: \(doubled as Any)")