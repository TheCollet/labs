// Сортування масиву за допомогою бульбашки
func bubbleSort(_ array: inout [Int]) {
    let n = array.count
    var swapped: Bool
    
    
    repeat {
        swapped = false
        for i in 0..<n-1 {
            if array[i] > array[i + 1] {
                
                let temp = array[i]
                array[i] = array[i + 1]
                array[i + 1] = temp
                swapped = true
            }
        }
    } while swapped
}

// Сортування масиву за допомогою вибору
func selectionSort(_ array: inout [Int]) {
    let n = array.count
    
    for i in 0..<n-1 {
        var minIndex = i
        for j in i+1..<n {
            if array[j] < array[minIndex] {
                minIndex = j
            }
        }
        
        if minIndex != i {
            let temp = array[i]
            array[i] = array[minIndex]
            array[minIndex] = temp
        }
    }
}

// Головна функція, яка обирає алгоритм сортування
func sortArray(_ array: inout [Int], algorithm: String = "bubble") {
    if algorithm == "bubble" {
        bubbleSort(&array)
    } else if algorithm == "selection" {
        selectionSort(&array)
    }
}

var numbers = [5, 2, 9, 1, 5, 6]
sortArray(&numbers, algorithm: "bubble")
print(numbers)  

var anotherNumbers = [5, 2, 9, 1, 5, 6]
sortArray(&anotherNumbers, algorithm: "selection")
print(anotherNumbers)