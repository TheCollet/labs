import Foundation


let nDict: [String: String] = ["1": "One", "2": "Two", "3": "Three", "4": "Four", "5": "Five"]


if let valueForKey3 = nDict["3"] {
    print("Значення за ключем '3': \(valueForKey3)")
} else {
    print("Ключ '3' відсутній у словнику nDict.")
}


let indexForKey4 = nDict.index(forKey: "4")
if let index = indexForKey4 {
    print("Значення за індексом ключа '4': \(nDict[index].value)")
} else {
    print("Ключ '4' відсутній у словнику nDict.")
}


var mNDict = nDict


mNDict["6"] = "Seven"
mNDict["7"] = "Six"
print("mNDict після додавання елементів 6:Seven та 7:Six: \(mNDict)")


mNDict.updateValue("Six", forKey: "6")
mNDict.updateValue("Seven", forKey: "7")
mNDict.updateValue("Eight", forKey: "8")
print("mNDict після оновлення значень: \(mNDict)")


mNDict.removeValue(forKey: "5")
print("mNDict після видалення ключа 5: \(mNDict)")


if let indexToRemove = mNDict.index(forKey: "4") {
    mNDict.remove(at: indexToRemove)
}
print("mNDict після видалення ключа 4: \(mNDict)")


if let index1 = mNDict.index(forKey: "1"), let index7 = mNDict.index(forKey: "7") {
    let distance = mNDict.distance(from: index1, to: index7)
    print("Відстань між парами значень 1:One та 7:Seven: \(distance)")
} else {
    print("Не вдалося визначити відстань між парами 1:One та 7:Seven.")
}


let mNDictKeys = Array(mNDict.keys)
print("Ключі словника mNDict: \(mNDictKeys)")


let mNDictValues = Array(mNDict.values)
print("Значення словника mNDict: \(mNDictValues)")


print("Кількість елементів у словнику mNDict: \(mNDict.count)")
print("Кількість ключів у словнику mNDict: \(mNDictKeys.count)")
print("Кількість значень у словнику mNDict: \(mNDictValues.count)")


print("Рядкове представлення словника mNDict: \(mNDict)")
