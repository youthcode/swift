//: [Previous](@previous)

import Foundation

func pi() -> Double {
    return 3.14
}
func sum(v1: Int, v2: Int) -> Int {
    return v1 + v2
}
sum(v1: 10, v2: 20)

func sayHello1() -> Void {
    print("Hello")
}
func sayHello2() -> () {
    print("Hello")
}
func sayHello3() {
    print("Hello")
}

func sum1(v1: Int, v2: Int) -> Int {
    v1 + v2
}
sum1(v1: 10, v2: 20)

func calculate(v1: Int, v2: Int) -> (sum: Int, difference: Int, average: Int) {
    let sum = v1 + v2
    return (sum, v1 - v2, sum>>1)
}
let result = calculate(v1: 20, v2: 10)
result.sum
result.difference
result.average

/// 求和【概述】
///
/// 将2个整数相加【更详细的描述】
///
/// - Parameter v1: 第1个整数
/// - Parameter v2: 第2个整数
/// - Returns: 2个整数的和
///
/// - Note: 传入2个整数即可【批注】
///
func sum2(v1: Int, v2: Int) -> Int {
    v1 + v2
}

sum2(v1: 10, v2: 20)

func goToWork(at time: String) {
    print("this time is \(time)")
}
goToWork(at: "08:00")

func check(name: String = "nobody", age: Int, job: String = "none") {
    print("name = \(name), age = \(age), job = \(job)")
}
check(name: "Jack", age: 20, job: "Doctor")
check(name: "Rose", age: 18)
check(age: 10, job: "Batman")
check(age: 15)

func sum3(_ numbers: Int...) -> Int {
    var total = 0
    for number in numbers {
        total += number
    }
    return total
}
sum3(10, 20, 30, 40)

//: [Next](@next)










