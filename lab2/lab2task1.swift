import Foundation


let fibArray = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]


let revArray = fibArray.reversed()


let snglArray = (2...100).filter { num in
    guard num > 1 else { return false }
    return !(2..<num).contains { num % $0 == 0 }
}


print(snglArray.count)


if snglArray.count >= 10 {
    print(snglArray[9])
}


if snglArray.count >= 20 {
    print(Array(snglArray[14...19]))
}


let rptArray = Array(repeating: snglArray[9], count: 10)


var oddArray: [Int] = [1, 3, 5, 7, 9]


oddArray.append(11)


oddArray.append(contentsOf: [15, 17, 19])


if let index = oddArray.firstIndex(of: 11) {
    oddArray.insert(13, at: index + 1)
}


if oddArray.count >= 8 {
    oddArray.removeSubrange(4..<7)
}


if let lastElement = oddArray.popLast() {
    print(lastElement)
}


if oddArray.count >= 2 {
    oddArray.replaceSubrange(1..<oddArray.count, with: [2, 3, 4])
}


if let index = oddArray.firstIndex(of: 3) {
    oddArray.remove(at: index)
}


print(oddArray.contains(3))


print(oddArray.description)
