func factorial(of number: Int) -> Int {
    if number == 0 || number == 1 {
        return 1
    }
    
    var result = 1
    for i in 2...number {
        result *= i
    }
    
    return result
}