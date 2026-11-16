let year1 = 1900
let year2 = 2000
let year3 = 2024
let year4 = 2026

let leap1 = (year1 % 400 == 0) || (year1 % 4 == 0 && year1 % 100 != 0)
let leap2 = (year2 % 400 == 0) || (year2 % 4 == 0 && year2 % 100 != 0)
let leap3 = (year3 % 400 == 0) || (year3 % 4 == 0 && year3 % 100 != 0)
let leap4 = (year4 % 400 == 0) || (year4 % 4 == 0 && year4 % 100 != 0)

print("Leap Year Checks:")
print("1900: \(leap1)")
print("2000: \(leap2)")
print("2024: \(leap3)")
print("2026: \(leap4)")

let number = 75

let isInRange = (1...100).contains(number)

print("\nRange Check:")
print("\(number) is between 1 and 100: \(isInRange)")

let value = 24

let isEvenAndNotMultipleOf10 = value % 2 == 0 && value % 10 != 0

print("\nEven Number Check:")
print("\(value) is even and not a multiple of 10: \(isEvenAndNotMultipleOf10)")

let nickname: String? = nil

let displayName = nickname ?? "Guest"

print("\nNickname:")
print(displayName)