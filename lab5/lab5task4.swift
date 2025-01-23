func analyzeString(_ input: String) {
    var characterCount = [Character: Int]()
    
    for char in input {
        characterCount[char, default: 0] += 1
    }
    
    print("Аналіз рядка: '\(input)'")
    print("Таблиця входжень символів:")
    for (char, count) in characterCount {
        print("'\(char)' - \(count) входжень")
    }
}

analyzeString("hello world")