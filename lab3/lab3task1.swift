class Person {
    var name: String
    weak var child: Son?
    
    init(name: String) {
        self.name = name
        print("\(name) (Person) initialized")
    }
    
    deinit {
        print("\(name) (Person) deallocated")
    }
}

class Son {
    var name: String
    weak var parent: Person?
    
    init(name: String) {
        self.name = name
        print("\(name) (Son) initialized")
    }
    
    deinit {
        print("\(name) (Son) deallocated")
    }
}

do {
    let father = Person(name: "John")
    let son = Son(name: "Mike")
    
    father.child = son
    son.parent = father
    
    print("End of scope")
}

print("Playground execution finished")
