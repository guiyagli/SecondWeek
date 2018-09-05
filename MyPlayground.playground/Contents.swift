//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var i:UInt8 = 2
i = 255
print("hello world! \(i)")

var arr  = [1,2,3]
arr.append(4)
arr.append(5)
arr.remove(at: 0)
arr

var x = 1, y = 2
print("x=\(x),y=\(y)")
(x,y) = (y,x)

print("x=\(x),y=\(y)")

var age = 42
switch age {
case let x where x < 20:
    print("少年")
case let x where x < 40:
    print("青年")
case let x where x < 60:
    print("中年")
default:
    print("老年")
}

func add(_ x:Int,_ y:Int) -> Int {
    return x+y
}
add(1, 2)

var z:String?
print(z)
var str1 = ""
if let x = z {
    str1 = x
}

func makeIncrementor(forIncrement amount: Int) -> (() -> Int) {
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementor
}
var incrementByTen = makeIncrementor(forIncrement: 10)
var incrementBySeven = makeIncrementor(forIncrement: 7)
print(incrementByTen())
print(incrementByTen())
print(incrementByTen())
print(incrementBySeven())
print(incrementBySeven())
print(incrementBySeven())


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





