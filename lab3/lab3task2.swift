import Foundation

// Частина 1: Створення класу Operand та роботи з retain cycle
class Operand {
    var number: Int
    var operand: Operand?
    
    var sumClosure: (() -> Int)?
    
    init(number: Int) {
        self.number = number
        print("init for Operand with number: \(number)")
    }
    
   
    func setupClosure() {
        sumClosure = {
            return self.number + (self.operand?.number ?? 0)
        }
    }
    
    
    func setupClosureWithWeakSelf() {
        sumClosure = { [weak self] in
            guard let strongSelf = self else { return 0 }
            return strongSelf.number + (strongSelf.operand?.number ?? 0)
        }
    }
    
    deinit {
        print("deinit for Operand with number: \(number)")
    }
}

// Частина 2: Додавання closure як властивості
class OperandWithBlock {
    var number: Int
    var aBlock: (() -> ())?
    
    init(number: Int) {
        self.number = number
        print("init for OperandWithBlock with number: \(number)")
        
        aBlock = { [weak self] in
            guard let strongSelf = self else { return }
            print("number in block: \(strongSelf.number)")
        }
    }
    
    deinit {
        print("deinit for OperandWithBlock with number: \(number)")
    }
}

// Частина 1: Використання retain cycle
print("\n--- Частина 1 ---")
var firstOperand: Operand? = Operand(number: 10)
var secondOperand: Operand? = Operand(number: 5)

firstOperand?.operand = secondOperand
secondOperand?.operand = firstOperand

firstOperand?.setupClosure()
secondOperand?.setupClosure()


firstOperand = nil 

// Частина 1: Використання weak self для уникнення retain cycle
print("\n--- Частина 1 (with weak self) ---")
firstOperand = Operand(number: 10)
secondOperand = Operand(number: 5)

firstOperand?.operand = secondOperand
secondOperand?.operand = firstOperand

firstOperand?.setupClosureWithWeakSelf()
secondOperand?.setupClosureWithWeakSelf()

firstOperand = nil 

// Частина 2: Використання closure в класі
print("\n--- Частина 2 ---")
var operandWithBlock: OperandWithBlock? = OperandWithBlock(number: 10)

operandWithBlock?.aBlock?() 

operandWithBlock = nil

