import Foundation

// 1. Опишіть масив fibArray з десяти перших чисел Фібонначі
let fibArray = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

// 2. Створіть масив revArray, елементи якого знаходяться в оберненому порядку відносно масиву fibArray
let revArray = fibArray.reversed()
print("revArray: \(revArray)")

// 3. Опишіть масив простих чисел snglArray, які не перевищують число 100
let snglArray = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]

// 4. Виведіть на екран кількість елементів масиву snglArray
print("Кількість елементів у snglArray: \(snglArray.count)")

// 5. Виведіть на екран 10-й елемент масиву snglArray
if snglArray.count >= 10 {
    print("10-й елемент snglArray: \(snglArray[9])")
} else {
    print("У масиві менше ніж 10 елементів.")
}

// 6. Виведіть на екран підмасив елементів масиву snglArray, починаючи з 15-го та закінчуючи 20-м елементами
if snglArray.count >= 20 {
    let subArray = snglArray[14..<20]
    print("Підмасив з 15-го по 20-й елементи snglArray: \(subArray)")
} else {
    print("У масиві менше ніж 20 елементів.")
}

// 7. Створіть масив rptArray з 10 елементів, що рівні 10-му елементу масиву snglArray
let rptArray = Array(repeating: snglArray[9], count: 10)
print("rptArray: \(rptArray)")

// 8. Опишіть масив непарних чисел oddArray (не менших за число 0, та не більших за число 10), використовуючи init(arrayLiteral:)
var oddArray: [Int] = [1, 3, 5, 7, 9]

// 9. Додайте до масиву oddArray число 11
oddArray.append(11)
print("oddArray після додавання 11: \(oddArray)")

// 10. Додайте до масиву oddArray числа 15, 17, 19 у якості підмасиву
oddArray += [15, 17, 19]
print("oddArray після додавання підмасиву: \(oddArray)")

// 11. Вставте у масив oddArray число 13 на позицію між числами 11 та 15
if let index = oddArray.firstIndex(of: 15) {
    oddArray.insert(13, at: index)
}
print("oddArray після вставки 13: \(oddArray)")

// 12. Видаліть елементи масиву oddArray, починаючи з 5-го та закінчуючи 8-им (невключно) елементами
if oddArray.count >= 8 {
    oddArray.removeSubrange(5..<8)
}
print("oddArray після видалення елементів з 5-го по 8-й: \(oddArray)")

// 13. Видаліть останній елемент масиву oddArray та виведіть його на екран
let lastElement = oddArray.popLast()
print("Видалений останній елемент oddArray: \(lastElement ?? -1)")
print("oddArray після видалення останнього елемента: \(oddArray)")

// 14. Замініть елементи масиву oddArray, починаючи з 2-го та закінчуючи останнім, на масив з числовими елементами 2, 3, 4
if oddArray.count >= 2 {
    oddArray.replaceSubrange(1..<oddArray.count, with: [2, 3, 4])
}
print("oddArray після заміни елементів з 2-го до останнього: \(oddArray)")

// 15. Видаліть елемент масиву oddArray, який рівний числу 3
if let index = oddArray.firstIndex(of: 3) {
    oddArray.remove(at: index)
}
print("oddArray після видалення елемента 3: \(oddArray)")

// 16. Виведіть значення, яке визначає, чи міститься число 3 у масиві oddArray
let containsThree = oddArray.contains(3)
print("Чи міститься число 3 у oddArray: \(containsThree)")

// 17. Виведіть на екран рядкове представлення масиву oddArray
let arrayStringRepresentation = oddArray.map { String($0) }.joined(separator: ", ")
print("Рядкове представлення oddArray: [\(arrayStringRepresentation)]")
