import Foundation


let fibArray = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]


let revArray = fibArray.reversed()
print("revArray: \(revArray)")


let snglArray = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]


print("Кількість елементів у snglArray: \(snglArray.count)")


if snglArray.count >= 10 {
    print("10-й елемент snglArray: \(snglArray[9])")
} else {
    print("У масиві менше ніж 10 елементів.")
}


if snglArray.count >= 20 {
    let subArray = snglArray[14..<20]
    print("Підмасив з 15-го по 20-й елементи snglArray: \(subArray)")
} else {
    print("У масиві менше ніж 20 елементів.")
}


let rptArray = Array(repeating: snglArray[9], count: 10)
print("rptArray: \(rptArray)")


var oddArray: [Int] = [1, 3, 5, 7, 9]


oddArray.append(11)
print("oddArray після додавання 11: \(oddArray)")


oddArray += [15, 17, 19]
print("oddArray після додавання підмасиву: \(oddArray)")


if let index = oddArray.firstIndex(of: 15) {
    oddArray.insert(13, at: index)
}
print("oddArray після вставки 13: \(oddArray)")


if oddArray.count >= 8 {
    oddArray.removeSubrange(5..<8)
}
print("oddArray після видалення елементів з 5-го по 8-й: \(oddArray)")


let lastElement = oddArray.popLast()
print("Видалений останній елемент oddArray: \(lastElement ?? -1)")
print("oddArray після видалення останнього елемента: \(oddArray)")


if oddArray.count >= 2 {
    oddArray.replaceSubrange(1..<oddArray.count, with: [2, 3, 4])
}
print("oddArray після заміни елементів з 2-го до останнього: \(oddArray)")


if let index = oddArray.firstIndex(of: 3) {
    oddArray.remove(at: index)
}
print("oddArray після видалення елемента 3: \(oddArray)")


let containsThree = oddArray.contains(3)
print("Чи міститься число 3 у oddArray: \(containsThree)")


let arrayStringRepresentation = oddArray.map { String($0) }.joined(separator: ", ")
print("Рядкове представлення oddArray: [\(arrayStringRepresentation)]")
