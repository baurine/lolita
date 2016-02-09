//: Playground - noun: a place where people can play

import UIKit

protocol KnowledgeOfFeedAnimal {
    func canGoOutside() -> Bool
}

class Animal {
    var face: String
    var nickname: String
    var food: String
    
    init(face: String, nickname: String, food: String) {
        self.face = face
        self.nickname = nickname
        self.food = food
    }
    
    func touchHead() {
        print("I want to eat \(food)")
    }
    
    var master: KnowledgeOfFeedAnimal?
    
    func askGoOutside() {
        if let master = master {
            if (master.canGoOutside()){
                print("Go out!")
            } else {
                print("Stay at home!")
            }
        } else {
            print("Just go!")
        }
    }
}

class Cat: Animal {
    init() {
        super.init(face: "cat", nickname: "lili", food: "fish")
    }
}

class Human: Animal, KnowledgeOfFeedAnimal {
    func canGoOutside() -> Bool {
        return false
    }
}

var myCat = Cat()
myCat.touchHead()
myCat.master = Human(face: "^_^", nickname: "Sam", food: "Huangberger")
myCat.askGoOutside()

