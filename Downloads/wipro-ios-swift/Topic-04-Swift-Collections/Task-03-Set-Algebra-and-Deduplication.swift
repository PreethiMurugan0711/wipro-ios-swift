let swiftClub: Set<String> = ["Anu", "Ben", "Chitra", "Dev"]

let uiClub: Set<String> = ["Chitra", "Dev", "Esha"]

print("----- Club Membership -----")

let commonMembers = swiftClub.intersection(uiClub)
print("Members in Both Clubs: \(commonMembers.sorted())")

let onlySwiftMembers = swiftClub.subtracting(uiClub)
print("Only Swift Club: \(onlySwiftMembers.sorted())")

let everyone = swiftClub.union(uiClub)
print("Everyone: \(everyone.sorted())")

let exactlyOneClub = swiftClub.symmetricDifference(uiClub)
print("Members in Exactly One Club: \(exactlyOneClub.sorted())")

print("\n----- Remove Duplicates -----")

let numbers = [3, 1, 3, 2, 1, 4]

var uniqueNumbers: [Int] = []

for number in numbers {
    if !uniqueNumbers.contains(number) {
        uniqueNumbers.append(number)
    }
}

print("Original Array: \(numbers)")
print("Array Without Duplicates: \(uniqueNumbers)")