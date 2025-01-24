import Foundation

// 1. Опишіть множину chSet із символів а, b, c та d.
let chSet: Set = ["a", "b", "c", "d"]

// 2. Створіть mutable множину mChSet на основі множити chSet.
var mChSet = chSet

// 3. Виведіть на екран кількість елементів множини mChSet.
print("Number of elements in mChSet: \(mChSet.count)")

// 4. Вставте символ е в множину mChSet.
mChSet.insert("e")

// 5. Створіть множину srtChSet, яка є відсортованою версією множини mChSet.
let srtChSet = mChSet.sorted()
print("Sorted mChSet: \(srtChSet)")

// 6. Видаліть з множини mChSet символ f та виведіть видалений символ на екран.
let removedElement = mChSet.remove("f")
print("Removed element: \(removedElement ?? "None")")

// 7. Видаліть символ d з множини mChSet за його індексом та виведіть рядкове представлення множини mChSet.
if let index = mChSet.firstIndex(of: "d") {
    mChSet.remove(at: index)
}
print("mChSet after removing 'd': \(mChSet)")

// 8. Виведіть відстань у множині mChSet між першим елементом та символом а.
if let firstElement = mChSet.first, let indexA = mChSet.firstIndex(of: "a") {
    let distance = mChSet.distance(from: mChSet.startIndex, to: indexA)
    print("Distance from first element to 'a': \(distance)")
}

// 9. Вставте символ а в множину mChSet.
mChSet.insert("a")

// 10. Опишіть множини aSet (зі значеннями One, Two, Three, 1, 2) та bSet (зі значеннями 1, 2, 3, One, Two).
let aSet: Set = ["One", "Two", "Three", "1", "2"]
let bSet: Set = ["1", "2", "3", "One", "Two"]

// 11. Створіть множину, яка містить всі спільні елементи для множин aSet та bSet.
let commonElements = aSet.intersection(bSet)
print("Common elements: \(commonElements)")

// 12. Створіть множину, яка містить унікальні елементи у множині aSet по відношенню до множини bSet.
let uniqueInA = aSet.subtracting(bSet)
print("Unique elements in aSet: \(uniqueInA)")

// Створіть множину, яка містить унікальні елементи у множині bSet по відношенню до множини aSet.
let uniqueInB = bSet.subtracting(aSet)
print("Unique elements in bSet: \(uniqueInB)")

// 13. Створіть множину, яка містить елементи, які не є спільними для множин aSet та bSet.
let nonCommonElements = aSet.symmetricDifference(bSet)
print("Non-common elements: \(nonCommonElements)")

// 14. Створіть множину, яка об'єднує усі елементи множин aSet та bSet.
let unionSet = aSet.union(bSet)
print("Union of aSet and bSet: \(unionSet)")

// 15. Опишіть множини xSet (зі значеннями 2...4), ySet (зі значеннями 1...6), zSet (зі значеннями 3, 4, 2) та x1Set (зі значеннями 5, 6, 7).
let xSet: Set = [2, 3, 4]
let ySet: Set = [1, 2, 3, 4, 5, 6]
let zSet: Set = [3, 4, 2]
let x1Set: Set = [5, 6, 7]

// 16. Виведіть значення, які визначають чи множина xSet входить у множину ySet, а також чи множина ySet входить у множину xSet.
let xInY = xSet.isSubset(of: ySet)
let yInX = ySet.isSubset(of: xSet)
print("xSet is a subset of ySet: \(xInY)")
print("ySet is a subset of xSet: \(yInX)")

// 17. Виведіть значення, які визначають чи множина xSet містить множину ySet, а також чи множина ySet містить множину xSet.
let xContainsY = xSet.isSuperset(of: ySet)
let yContainsX = ySet.isSuperset(of: xSet)
print("xSet contains ySet: \(xContainsY)")
print("ySet contains xSet: \(yContainsX)")

// 18. Виведіть значеня, яке визначає чи множини xSet та zSet є рівними.
let xEqualsZ = xSet == zSet
print("xSet is equal to zSet: \(xEqualsZ)")

// 19. Виведіть значення, яке визначає чи множина xSet входить у множину zSet, але не є рівною множині zSet.
let xInZ = xSet.isStrictSubset(of: zSet)
print("xSet is a strict subset of zSet: \(xInZ)")

// 20. Виведіть значення, яке визначає чи множина xSet містить множину zSet, але не є рівною множині zSet.
let xContainsZ = xSet.isStrictSuperset(of: zSet)
print("xSet is a strict superset of zSet: \(xContainsZ)")
