let scores = ["Asha": 90, "Ravi": 72]

// Safely retrieve Kiran's score
if let kiran = scores["Kiran"] {
    print("Kiran's Score: \(kiran)")
} else {
    print("Kiran's score is not available.")
}

// Safely convert string to integer
if let number = Int("12a") {
    print("Converted Number: \(number)")
} else {
    print("Invalid number format.")
}

// Provide default values using nil-coalescing
let safeScore = scores["Kiran"] ?? 0
let safeNumber = Int("12a") ?? 0

print("Final Sum: \(safeScore + safeNumber)")