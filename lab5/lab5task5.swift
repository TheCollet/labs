func add(a: Int, b: Int) -> Int {
    return a + b
}

func subtract(a: Int, b: Int) -> Int {
    return a - b
}

func multiply(a: Int, b: Int) -> Int {
    return a * b
}

func modulus(a: Int, b: Int) -> Int {
    return a % b
}

func power(a: Int, b: Int) -> Int {
    var result = 1
    for _ in 1...b {
        result *= a
    }
    return result
}


func calculator(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

func chooseOperation() {
    let firstNumber = 5
    let secondNumber = 3
    
    let sum = calculator(a: firstNumber, b: secondNumber, operation: add)
    print("Додавання: \(firstNumber) + \(secondNumber) = \(sum)")
    
    let difference = calculator(a: firstNumber, b: secondNumber, operation: subtract)
    print("Віднімання: \(firstNumber) - \(secondNumber) = \(difference)")
    
    let product = calculator(a: firstNumber, b: secondNumber, operation: multiply)
    print("Множення: \(firstNumber) * \(secondNumber) = \(product)")
    
    let remainder = calculator(a: firstNumber, b: secondNumber, operation: modulus)
    print("Остаточний залишок: \(firstNumber) % \(secondNumber) = \(remainder)")
    
    let powerResult = calculator(a: firstNumber, b: secondNumber, operation: power)
    print("Піднесення до степеня: \(firstNumber) ^ \(secondNumber) = \(powerResult)")
}

chooseOperation()