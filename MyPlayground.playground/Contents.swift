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





