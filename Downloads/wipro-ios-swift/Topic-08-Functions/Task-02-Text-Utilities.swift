// 1. Check palindrome
func isPalindrome(_ text: String) -> Bool {

    let cleaned = text
        .lowercased()
        .filter { $0.isLetter || $0.isNumber }

    return cleaned == String(cleaned.reversed())
}

// 2. Count vowels
func vowelCount(in text: String) -> Int {

    let vowels = "aeiou"

    return text.lowercased().filter {
        vowels.contains($0)
    }.count
}

// 3. Count all words
func wordCount(in text: String) -> Int {

    return text.split(separator: " ").count
}

// 4. Function overloading
func wordCount(in text: String, minLength: Int) -> Int {

    return text.split(separator: " ").filter {
        $0.count >= minLength
    }.count
}

// Testing

let sentence = "A man, a plan, a canal: Panama"

print("----- Text Utilities -----")

print("Original Text: \(sentence)")

print("Is Palindrome: \(isPalindrome(sentence))")

print("Vowel Count: \(vowelCount(in: sentence))")

print("Total Word Count: \(wordCount(in: sentence))")

print("Words with Minimum 4 Characters: \(wordCount(in: sentence, minLength: 4))")