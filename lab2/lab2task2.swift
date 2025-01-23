import Foundation

// 1. Опишіть множину chSet із символів а, b, c та d
let chSet: Set<Character> = ["a", "b", "c", "d"]

// 2. Створіть mutable множину mChSet на основі множити chSet
var mChSet = chSet

// 3. Виведіть на екран кількість елементів множини mChSet
print("Кількість елементів у mChSet: \(mChSet.count)")

// 4. Вставте символ е в множину mChSet
mChSet.insert("e")
print("mChSet після додавання 'e': \(mChSet)")

// 5. Створіть множину srtChSet, яка є відсортованою версією множини mChSet
let srtChSet = Set(mChSet.sorted())
print("srtChSet: \(srtChSet)")

// 6. Видаліть з множини mChSet символ f та виведіть видалений символ на екран
let removedElementF = mChSet.remove("f")
print("Видалений символ f: \(removedElementF ?? "nil")")

// 7. Видаліть символ d з множини mChSet за його індексом та виведіть рядкове представлення множини mChSet
if let index = mChSet.firstIndex(of: "d") {
    mChSet.remove(at: index)
}
print("mChSet після видалення 'd': \(mChSet)")

// 8. Виведіть відстань у множині mChSet між першим елементом та символом а
if let firstElement = mChSet.first, let distance = mChSet.distance(from: firstElement, to: "a") {
    print("Відстань між першим елементом та 'a': \(distance)")
} else {
    print("Не вдалося визначити відстань.")
}

// 9. Вставте символ а в множину mChSet
mChSet.insert("a")
print("mChSet після додавання 'a': \(mChSet)")

// 10. Опишіть множини aSet (зі значеннями One, Two, Three, 1, 2) та bSet (зі значеннями 1, 2, 3, One, Two)
let aSet: Set<AnyHashable> = ["One", "Two", "Three", 1, 2]
let bSet: Set<AnyHashable> = [1, 2, 3, "One", "Two"]

// 11. Створіть множину, яка містить всі спільні елементи для множин aSet та bSet
let commonSet = aSet.intersection(bSet)
print("Спільні елементи для aSet та bSet: \(commonSet)")

// 12. Створіть множину, яка містить унікальні елементи у множині aSet по відношенню до множини bSet. Створіть множину, яка містить унікальні елементи у множині bSet по відношенню до множини aSet.
let uniqueInASet = aSet.subtracting(bSet)
let uniqueInBSet = bSet.subtracting(aSet)
print("Унікальні елементи у aSet по відношенню до bSet: \(uniqueInASet)")
print("Унікальні елементи у bSet по відношенню до aSet: \(uniqueInBSet)")

// 13. Створіть множину, яка містить елементи, які не є спільними для множин aSet та bSet
let symmetricDifferenceSet = aSet.symmetricDifference(bSet)
print("Елементи, які не є спільними для aSet та bSet: \(symmetricDifferenceSet)")

// 14. Створіть множину, яка об'єднує усі елементи множин aSet та bSet
let unionSet = aSet.union(bSet)
print("Об'єднані елементи aSet та bSet: \(unionSet)")

// 15. Опишіть множини xSet (зі значеннями 2...4), ySet (зі значеннями 1...6), zSet (зі значеннями 3, 4, 2) та x1Set (зі значеннями 5, 6, 7)
let xSet: Set<Int> = [2, 3, 4]
let ySet: Set<Int> = [1, 2, 3, 4, 5, 6]
let zSet: Set<Int> = [3, 4, 2]
let x1Set: Set<Int> = [5, 6, 7]

// 16. Виведіть значення, які визначають чи множина xSet входить у множину ySet, а також чи множина ySet входить у множину xSet
let xSetIsSubsetOfYSet = xSet.isSubset(of: ySet)
let ySetIsSubsetOfXSet = ySet.isSubset(of: xSet)
print("Чи входить xSet у ySet: \(xSetIsSubsetOfYSet)")
print("Чи входить ySet у xSet: \(ySetIsSubsetOfXSet)")

// 17. Виведіть значення, які визначають чи множина xSet містить множину ySet, а також чи множина ySet містить множину xSet
let xSetContainsYSet = xSet.isSuperset(of: ySet)
let ySetContainsXSet = ySet.isSuperset(of: xSet)
print("Чи містить xSet ySet: \(xSetContainsYSet)")
print("Чи містить ySet xSet: \(ySetContainsXSet)")

// 18. Виведіть значення, яке визначає чи множини xSet та zSet є рівними
let xSetIsEqualToZSet = xSet == zSet
print("Чи рівні xSet та zSet: \(xSetIsEqualToZSet)")

// 19. Виведіть значення, яке визначає чи множина xSet входить у множину zSet, але не є рівною множині zSet
let xSetIsStrictSubsetOfZSet = xSet.isStrictSubset(of: zSet)
print("Чи входить xSet у zSet, але не є рівною: \(xSetIsStrictSubsetOfZSet)")

// 20. Виведіть значення, яке визначає чи множина xSet містить множину zSet, але не є рівною множині zSet
let xSetIsStrictSupersetOfZSet = xSet.isStrictSuperset(of: zSet)
print("Чи містить xSet zSet, але не є рівною: \(xSetIsStrictSupersetOfZSet)")
