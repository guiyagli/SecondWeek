//: Playground - noun: a place where people can play

import UIKit

// 1....10000质数
var primes = [Int]()
for i in 2...100 {
    var isPrime = true
    for j in 2..<i {
        if i % j == 0 {
          isPrime = false
        }
    }
    if isPrime {
        primes.append(i)
    }
}
primes.append(3)
primes.append(5)
primes.append(2)

//first method
//func >(x:Int,y:Int) -> Bool {
//    return x < y
//}

primes.sort(by: >)

print(primes)

enum Gender{
    case male,female
}

class Person{
    var firstName:String
    var lastName:String
    var age:Int
    var gender:Gender
    var fullName:String { return firstName + lastName }
    init(firstName:String,lastName:String,age:Int,gender:Gender){
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.gender = gender
    }
    convenience init(firstName:String) {
        self.init(firstName: firstName, lastName: "", age: 18, gender: Gender.female)
    }
    func description() -> String {
        return "name:\(fullName) age:\(age) gender:\(gender)"
    }
    static func == (lhs:Person,rhs:Person) -> Bool {
        return lhs.fullName == rhs.fullName && lhs.age == rhs.age && lhs.gender == rhs.gender
    }
}

class Student: Person{
    var grade:Int
    init(firstName: String, lastName: String, age: Int, gender: Gender,grade:Int) {
        self.grade = grade
        super.init(firstName: firstName, lastName: lastName, age: age, gender: gender)
    }
    override func description() -> String {
        return super.description() + " grade:\(grade)"
    }
}

var person1 = Person(firstName: "li", lastName: "guiyang", age: 43, gender: Gender.male)
var person2 = Person(firstName: "gao")
var person3 = Person(firstName: "li", lastName: "guiyang", age: 43, gender: Gender.male)
print(person1.description())
print(person2.description())

var stu1 = Student(firstName: "li", lastName: "guiyang", age: 43, gender: Gender.male, grade: 80)
print(stu1.description())
print(person1 == person3)
