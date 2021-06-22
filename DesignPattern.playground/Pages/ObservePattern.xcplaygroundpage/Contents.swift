//: [Previous](@previous)

import UIKit


protocol MyObserver: AnyObject {
    func update(content: String)
}

class MyPublisher {
    
    var observers = [MyObserver]()
    
    func register(observer: MyObserver) {
        observers.append(observer)
        print("\(type(of: observer)) has register to publiser.")
    }
    
    func removeObservers(observer: MyObserver) {
        observers = observers.filter({$0 !== observer})
    }
    
    func notify(event: String) {
        for observer in observers {
            observer.update(content: event)
        }
    }
    
}

class MyFirstObserver: MyObserver {
    func update(content: String) {
        print("My 1st Observer has been update the content: \(content)")
    }
}

class MySecondObserver: MyObserver {
    func update(content: String) {
        print("My 2nd Observer has been update the content: \(content)")
    }
}

let myPublisher = MyPublisher()

let myFirstObserver = MyFirstObserver()
let mySecondObserver = MySecondObserver()

myPublisher.register(observer: myFirstObserver)
myPublisher.register(observer: mySecondObserver)

myPublisher.notify(event: "Fire first event")

myPublisher.removeObservers(observer: myFirstObserver)

myPublisher.notify(event: "Fire second event")

//: [Next](@next)
