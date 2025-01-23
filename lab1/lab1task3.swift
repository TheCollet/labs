import Foundation

var str = "Hello World. This is Swift programming language"


let length = str.count
print("Довжина рядка: \(length)")


str = str.replacingOccurrences(of: "i", with: "u")
print("Після заміни 'i' на 'u': \(str)")


let indicesToRemove = [3, 6, 9]
str = String(str.enumerated().filter { !indicesToRemove.contains($0.offset) }.map { $0.element })
print("Після видалення 4-го, 7-го та 10-го символів: \(str)")


str += " (modified)"
print("Після додавання '(modified)': \(str)")


let isEmpty = str.isEmpty
print("Чи рядок є пустим: \(isEmpty)")


str += "."
print("Після додавання '.': \(str)")


let startsWithHello = str.hasPrefix("Hello")
print("Чи рядок починається з 'Hello': \(startsWithHello)")


let endsWithWorld = str.hasSuffix("world.")
print("Чи рядок закінчується 'world.': \(endsWithWorld)")


let insertIndex = str.index(str.startIndex, offsetBy: 10)
str.insert("-", at: insertIndex)
print("Після вставки '-': \(str)")


str = str.replacingOccurrences(of: "Thus us", with: "It is")
print("Після заміни 'Thus us' на 'It is': \(str)")


let tenthCharacter = str[str.index(str.startIndex, offsetBy: 9)]
let fifteenthCharacter = str[str.index(str.startIndex, offsetBy: 14)]
print("10-й символ: \(tenthCharacter)")
print("15-й символ: \(fifteenthCharacter)")


let range = str.index(str.startIndex, offsetBy: 9)..<str.index(str.startIndex, offsetBy: 14)
let substring = str[range]
print("Підрядок з 10-го по 15-й символи: \(substring)")
