import Foundation

var str = "Hello World. This is Swift programming language"

// 1. Визначити та вивести на екран довжину рядка
let length = str.count
print("Довжина рядка: \(length)")

// 2. Замінити кожне входження символа “i” на символ “u”
str = str.replacingOccurrences(of: "i", with: "u")
print("Після заміни 'i' на 'u': \(str)")

// 3. Видалити 4-й, 7-й та 10-й символи
let indicesToRemove = [3, 6, 9]
str = String(str.enumerated().filter { !indicesToRemove.contains($0.offset) }.map { $0.element })
print("Після видалення 4-го, 7-го та 10-го символів: \(str)")

// 4. Додати рядок “ (modified)” до існуючого рядка
str += " (modified)"
print("Після додавання '(modified)': \(str)")

// 5. Вивести значення, що визначає чи існуючий рядок є пустим
let isEmpty = str.isEmpty
print("Чи рядок є пустим: \(isEmpty)")

// 6. Додати символ “.” до кінця існуючого рядка
str += "."
print("Після додавання '.': \(str)")

// 7. Вивести значення, що визначає чи рядок починається з підрядка “Hello”
let startsWithHello = str.hasPrefix("Hello")
print("Чи рядок починається з 'Hello': \(startsWithHello)")

// 8. Вивести значення, що визначає чи рядок закінчується підрядком “world.”
let endsWithWorld = str.hasSuffix("world.")
print("Чи рядок закінчується 'world.': \(endsWithWorld)")

// 9. Вставити символ “-” після 10-го символа
let insertIndex = str.index(str.startIndex, offsetBy: 10)
str.insert("-", at: insertIndex)
print("Після вставки '-': \(str)")

// 10. Замінити послідовність “Thus us” послідовністю “It is”
str = str.replacingOccurrences(of: "Thus us", with: "It is")
print("Після заміни 'Thus us' на 'It is': \(str)")

// 11. Вивести 10-й та 15-й символи існуючого рядка
let tenthCharacter = str[str.index(str.startIndex, offsetBy: 9)]
let fifteenthCharacter = str[str.index(str.startIndex, offsetBy: 14)]
print("10-й символ: \(tenthCharacter)")
print("15-й символ: \(fifteenthCharacter)")

// 12. Вивести підрядок, що знаходиться у межах 10-го (включно) та 15-го (невключно) символів
let range = str.index(str.startIndex, offsetBy: 9)..<str.index(str.startIndex, offsetBy: 14)
let substring = str[range]
print("Підрядок з 10-го по 15-й символи: \(substring)")
