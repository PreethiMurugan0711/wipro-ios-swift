var subjects = ["Swift", "UIKit", "SwiftUI"]

subjects.append("Networking")
subjects.insert("Testing", at: 1)
subjects.remove(at: subjects.firstIndex(of: "UIKit")!)

print("----- Subject Registration -----")
print("Subjects: \(subjects)")
print("Sorted Subjects: \(subjects.sorted())")

var registered: Set<String> = ["Preethi", "Nandhini", "Lavanya"]

registered.insert("Santhiya")
registered.insert("Preethi")

print("\n----- Registered Students -----")
print("Students: \(registered)")
print("Total Registered Students: \(registered.count)")

var marks: [String: Int] = [
    "Preethi": 90,
    "Nandhini": 85,
    "Lavanya": 95
]

marks["Santhiya"] = 88
marks["Preethi"] = 92

print("\n----- Student Marks -----")

let missingMark = marks["Kavya"]
print("Kavya's Mark: \(missingMark ?? 0)")

for (name, mark) in marks.sorted(by: { $0.key < $1.key }) {
    print("\(name): \(mark)")
}

if let highest = marks.max(by: { $0.value < $1.value }) {
    print("\nHighest Mark: \(highest.value)")
    print("Topper: \(highest.key)")
}