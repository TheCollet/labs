import Foundation


var integerNumber: Int?


var decimalNumber: Double?


integerNumber = 10


if let number = integerNumber {
    integerNumber = number + number
}


if let number = integerNumber {
    integerNumber = -number
}


if let number = integerNumber {
    decimalNumber = Double(number)
}


var pairOrValues: (integer: Int?, decimal: Double?)


if let intValue = pairOrValues.integer {
    print("Цілочислове значення: \(intValue)")
} else {
    print("Цілочислове значення відсутнє")
}


if let decimalValue = pairOrValues.decimal {
    print("Значення з плавачою крапкою: \(decimalValue)")
} else {
    print("Значення з плавачою крапкою відсутнє")
}


if let decimalValue = decimalNumber {
    print("Значення decimalNumber: \(decimalValue)")
} else {
    print("decimalNumber не має значення")
}
