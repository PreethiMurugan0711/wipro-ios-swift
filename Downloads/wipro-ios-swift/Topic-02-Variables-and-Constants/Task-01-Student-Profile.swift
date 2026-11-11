let studentName: String = "Preethi"
let rollNumber: Int = 2301
let isHosteller: Bool = true

var semester: Int = 7
var cgpa: Double = 8.4

print("----- Original Student Profile -----")
print("Name: \(studentName), Roll: \(rollNumber), Semester: \(semester), CGPA: \(cgpa)")
print("Hosteller: \(isHosteller)")

semester += 1
cgpa = 8.6

print("\n----- Updated Student Profile -----")
print("Name: \(studentName), Roll: \(rollNumber), Semester: \(semester), CGPA: \(cgpa)")
print("Hosteller: \(isHosteller)")

// studentName = "Lavanya"

print("\n----- Data Types -----")
print(type(of: studentName))
print(type(of: rollNumber))
print(type(of: semester))
print(type(of: cgpa))
print(type(of: isHosteller))