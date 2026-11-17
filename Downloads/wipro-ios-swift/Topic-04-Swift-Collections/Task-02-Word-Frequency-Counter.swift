let sentence = "swift is fun and swift is fast"

let words = sentence.split(separator: " ").map { String($0) }

print("----- Word Frequency Counter -----")

print("Total Words: \(words.count)")

let uniqueWords = Set(words)

print("\nUnique Words:")
print(uniqueWords.sorted())

var frequency: [String: Int] = [:]

for word in words {
    frequency[word, default: 0] += 1
}

print("\nWord Frequencies:")

for (word, count) in frequency.sorted(by: { $0.key < $1.key }) {
    print("\(word): \(count)")
}

let rankedWords = frequency.sorted {
    if $0.value == $1.value {
        return $0.key < $1.key
    }
    return $0.value > $1.value
}

print("\nWords Ranked by Frequency:")

for (word, count) in rankedWords {
    print("\(word): \(count)")
}