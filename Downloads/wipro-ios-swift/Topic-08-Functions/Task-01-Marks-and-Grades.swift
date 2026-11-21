// 1. Variadic parameter
func average(of marks: Int...) -> Double {

    if marks.isEmpty {
        return 0
    }

    let total = marks.reduce(0, +)

    return Double(total) / Double(marks.count)
}

// 2. Grade calculation
func grade(for average: Double) -> String {

    switch average {
    case 90...:
        return "O"
    case 80..<90:
        return "A+"
    case 70..<80:
        return "A"
    case 60..<70:
        return "B"
    default:
        return "RA"
    }
}

// 3. Return tuple and optional
func stats(of marks: [Int]) -> (min: Int, max: Int, average: Double)? {

    guard !marks.isEmpty else {
        return nil
    }

    let minimum = marks.min()!
    let maximum = marks.max()!
    let avg = Double(marks.reduce(0, +)) / Double(marks.count)

    return (minimum, maximum, avg)
}

// 4. Inout parameter and default value
func curve(_ marks: inout [Int], by bonus: Int = 5) {

    for index in marks.indices {
        marks[index] = min(marks[index] + bonus, 100)
    }
}

// Function calls

print("----- Average -----")

let avg = average(of: 90, 85, 75, 80)
print("Average: \(avg)")

print("\n----- Grade -----")

print("Grade: \(grade(for: avg))")

print("\n----- Statistics -----")

let marks = [90, 85, 75, 80]

if let result = stats(of: marks) {
    print("Minimum: \(result.min)")
    print("Maximum: \(result.max)")
    print("Average: \(result.average)")
}

print("\n----- Marks After Bonus -----")

var studentMarks = [90, 85, 75, 98]

curve(&studentMarks)

print("Updated Marks: \(studentMarks)")