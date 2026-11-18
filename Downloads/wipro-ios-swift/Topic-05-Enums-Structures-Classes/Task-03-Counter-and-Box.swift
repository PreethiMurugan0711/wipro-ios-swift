struct Counter {
    var value = 0

    mutating func increment() {
        value += 1
    }
}

class Box {
    var value = 0

    func increment() {
        value += 1
    }
}

print("----- Structure Counter -----")

var c = Counter()

c.increment()

print("Counter Value: \(c.value)")

print("\n----- Class Box -----")

let b = Box()

b.increment()

print("Box Value: \(b.value)")

print("\n----- Class Identity -----")

let box1 = Box()
let box2 = box1

box2.value = 100

print("Box 1 Value: \(box1.value)")
print("Box 2 Value: \(box2.value)")

print("Are both references pointing to the same object?")
print(box1 === box2)