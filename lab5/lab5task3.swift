import Foundation

func analyzeCharacter(_ char: Character) {
    
    if char.isLetter {
        print("Символ є літерою.")
        
        
        if char.isASCII {
            print("Символ належить до латинської абетки.")
        } else {
            print("Символ належить до кириличної абетки.")
        }
        
        
        if char.isUppercase {
            print("Літера у великому регістрі.")
        } else if char.isLowercase {
            print("Літера у малому регістрі.")
        }
    } else if char.isNumber {
        print("Символ є цифрою.")
    } else {
        print("Символ не є літерою і не є цифрою.")
    }
}

analyzeCharacter("A")
analyzeCharacter("а")
analyzeCharacter("3")
analyzeCharacter("#")