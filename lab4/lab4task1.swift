import Foundation

// Клас, що представляє раціональне число
class Rational: NSObject, NSCopying {
    var numerator: Int
    var denominator: Int
    
    // Ініціалізатор
    init(numerator: Int, denominator: Int) {
        // Перевірка на нульовий знаменник
        guard denominator != 0 else {
            fatalError("Знаменник не може бути нулем.")
        }
        self.numerator = numerator
        self.denominator = denominator
    }
    
    // Реалізація копіювання об'єкта
    func copy(with zone: NSZone? = nil) -> Any {
        return Rational(numerator: self.numerator, denominator: self.denominator)
    }
    
    // Спрощення раціонального числа
    private func simplify() {
        let gcd = self.gcd(a: self.numerator, b: self.denominator)
        self.numerator /= gcd
        self.denominator /= gcd
    }
    
    // Обчислення НСД
    private func gcd(a: Int, b: Int) -> Int {
        var a = a
        var b = b
        while b != 0 {
            let temp = b
            b = a % b
            a = temp
        }
        return a
    }
    
    // Порівняння раціональних чисел
    static func ==(lhs: Rational, rhs: Rational) -> Bool {
        return lhs.numerator * rhs.denominator == rhs.numerator * lhs.denominator
    }
    
    static func <(lhs: Rational, rhs: Rational) -> Bool {
        return lhs.numerator * rhs.denominator < rhs.numerator * lhs.denominator
    }
    
    static func >(lhs: Rational, rhs: Rational) -> Bool {
        return lhs.numerator * rhs.denominator > rhs.numerator * lhs.denominator
    }
    
    // Операції додавання і віднімання (методи класу)
    static func +(lhs: Rational, rhs: Rational) -> Rational {
        let numerator = lhs.numerator * rhs.denominator + rhs.numerator * lhs.denominator
        let denominator = lhs.denominator * rhs.denominator
        let result = Rational(numerator: numerator, denominator: denominator)
        result.simplify()
        return result
    }
    
    static func -(lhs: Rational, rhs: Rational) -> Rational {
        let numerator = lhs.numerator * rhs.denominator - rhs.numerator * lhs.denominator
        let denominator = lhs.denominator * rhs.denominator
        let result = Rational(numerator: numerator, denominator: denominator)
        result.simplify()
        return result
    }
    
    // Операції множення і ділення (методи екземпляра класу)
    func multiply(with other: Rational) -> Rational {
        let numerator = self.numerator * other.numerator
        let denominator = self.denominator * other.denominator
        let result = Rational(numerator: numerator, denominator: denominator)
        result.simplify()
        return result
    }
    
    func divide(by other: Rational) -> Rational {
        guard other.numerator != 0 else {
            fatalError("Не можна ділити на нуль.")
        }
        let numerator = self.numerator * other.denominator
        let denominator = self.denominator * other.numerator
        let result = Rational(numerator: numerator, denominator: denominator)
        result.simplify()
        return result
    }
    
    // Опис для виведення в консоль
    override var description: String {
        return "\(numerator)/\(denominator)"
    }
}

// Клас калькулятора (Singleton)
class Calculator {
    static let shared = Calculator()
    
    private init() {} // Запобігає створенню екземплярів
    
    // Операція множення
    func multiply(_ a: Rational, _ b: Rational) -> Rational {
        return a.multiply(with: b)
    }
    
    // Операція ділення
    func divide(_ a: Rational, _ b: Rational) -> Rational {
        return a.divide(by: b)
    }
}

// Демонстрація роботи класів
let r1 = Rational(numerator: 1, denominator: 2)
let r2 = Rational(numerator: 3, denominator: 4)
let r3 = Rational(numerator: 5, denominator: 6)

print("r1: \(r1), r2: \(r2), r3: \(r3)")

// Операції додавання та віднімання
let sum = r1 + r2
let difference = r1 - r2
print("r1 + r2 = \(sum)")  // Виведе: 10/8
print("r1 - r2 = \(difference)")  // Виведе: -2/8

// Операції множення та ділення через Calculator
let product = Calculator.shared.multiply(r1, r3)
let quotient = Calculator.shared.divide(r1, r3)
print("r1 * r3 = \(product)")  // Виведе: 5/12
print("r1 / r3 = \(quotient)")  // Виведе: 2/5

// Порівняння раціональних чисел
print("r1 == r2: \(r1 == r2)")  // Виведе: false
print("r1 < r2: \(r1 < r2)")  // Виведе: true
print("r1 > r2: \(r1 > r2)")  // Виведе: false

// Копіювання об'єкта
let r4 = r1.copy() as! Rational
print("r4 (копія r1): \(r4)")  // Виведе: 1/2
