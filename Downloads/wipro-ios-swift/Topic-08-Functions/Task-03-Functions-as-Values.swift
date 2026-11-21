// 1. Function returning another function
func makeMultiplier(_ factor: Int) -> (Int) -> Int {

    return { number in
        return number * factor
    }
}

// 2. Create double and triple functions
let double = makeMultiplier(2)

let triple = makeMultiplier(3)

// 3. Function accepting another function
func apply(
    _ values: [Int],
    using transform: (Int) -> Int
) -> [Int] {

    return values.map { number in
        transform(number)
    }
}

// Testing

let numbers = [1, 2, 3, 4, 5]

print("Original Numbers: \(numbers)")

// Double
let doubled = apply(numbers, using: double)

print("Doubled: \(doubled)")

// Triple
let tripled = apply(numbers, using: triple)

print("Tripled: \(tripled)")

// Square using inline closure
let squared = apply(numbers, using: { number in
    return number * number
})

print("Squared: \(squared)")