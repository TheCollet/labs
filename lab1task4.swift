import Foundation

// 1. Опишіть сутність, що містить або не містить ціле десяткове число integerNumber, але не задає значення за замовчування.
var integerNumber: Int?

// 2. Опишіть сутність, що містить або не містить число з плавачою крапкою decimalNumber, але не задає значення за замовчування.
var decimalNumber: Double?

// 3. Присвойте значення числу integerNumber.
integerNumber = 10

// 4. Додайте до числа integerNumber те ж значення, використовуючи increment та (або) decrement оператор.
if let number = integerNumber {
    integerNumber = number + number
}

// 5. Змініть знак числа на протилежний, використовуючи unary minus або plus оператор.
if let number = integerNumber {
    integerNumber = -number
}

// 6. Присвойте значення числу decimalNumber значенням числа integerNumber.
if let number = integerNumber {
    decimalNumber = Double(number)
}

// 7. Опишіть сутність pairOrValues, що містить або не містить значення integerNumber та decimalNumber.
var pairOrValues: (integer: Int?, decimal: Double?)

// 8. Перевірте, чи містить сутність pairOfValues цілочислове значення та виведіть його, якщо таке значення існує.
if let intValue = pairOrValues.integer {
    print("Цілочислове значення: \(intValue)")
} else {
    print("Цілочислове значення відсутнє")
}

// 9. Перевірте, чи містить сутність pairOfValues значення, що представлене число з плавачою крапкою, та виведіть його, якщо таке значення існує.
if let decimalValue = pairOrValues.decimal {
    print("Значення з плавачою крапкою: \(decimalValue)")
} else {
    print("Значення з плавачою крапкою відсутнє")
}

// 10. Виведіть значення числа decimalNumber використовуючи optional binding.
if let decimalValue = decimalNumber {
    print("Значення decimalNumber: \(decimalValue)")
} else {
    print("decimalNumber не має значення")
}
