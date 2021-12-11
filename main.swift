//TO:DO Очень маленькая дз вышла. Буду практиковаться по этой теме чтобы нормально писать такое.
//TO:DO Не разобрался с сабскриптами, не знаю как их сюда вписать.

struct People {
    var name: String
    var age: Int
    var gender: String
}

struct Queue<T> {
    
    private var people = [T]()
    
    mutating func EnableToQueue(newPeople: T) {
        return people.append(newPeople)
    }
    
    mutating func disableFromQueueLast() -> T {
        return people.removeLast()
    }
    
    mutating func disableFromQueueFirst() -> T {
        return people.removeFirst()
    }
    
    func showQueue() {
        print(people)
    }
}

var queueToCinema = Queue<People>()

queueToCinema.EnableToQueue(newPeople: .init(name: "alex", age: 19, gender: "man"))
queueToCinema.EnableToQueue(newPeople: .init(name: "beth", age: 27, gender: "woman"))
queueToCinema.EnableToQueue(newPeople: .init(name: "ithan", age: 24, gender: "man"))
queueToCinema.EnableToQueue(newPeople: .init(name: "aaron", age: 15, gender: "man"))

queueToCinema.disableFromQueueFirst()
queueToCinema.disableFromQueueLast()

queueToCinema.showQueue()
