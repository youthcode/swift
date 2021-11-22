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

func swapValues(_ v1: inout Int, _ v2: inout Int) {
    let tmp = v1
    v1 = v2
    v2 = tmp
}
var num1 = 10
var num2 = 20
swapValues(&num1, &num2)

func swapValues2(_ v1: inout Int, _ v2: inout Int) {
    (v1, v2) = (v2, v1)
}

func test() { } // () -> Void 或者 ()->()

func sum3(a: Int, b: Int) -> Int {
    a + b
} // (Int, Int) -> Int

// 定义变量
var fn:(Int, Int)->Int = sum3
fn(2, 5) // 5

func difference(v1: Int, v2: Int) -> Int {
    v1 - v2
}

func printResult(_ mathFn: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFn(a, b))")
}

printResult(sum3, 5, 2)
printResult(difference, 5, 2)

func next(_ input: Int) -> Int {
    input + 1
}

func previous(_ input: Int) -> Int {
    input - 1
}

func forward(_ forward: Bool) -> (Int) -> Int {
    forward ? next : previous
}

forward(true)(3)
forward(false)(3)

typealias Byte = Int8
typealias Short = Int16
typealias Long = Int64

typealias Date = (year: Int, month: Int, day: Int)
func test(_ date: Date) {
    print(date.0)
    print(date.year)
}
test((2011, 9, 10))

typealias IntFn = (Int, Int) -> Int
func difference2(v1: Int, v2: Int) -> Int {
    v1 - v2
}

let fn2: IntFn = difference
fn2(20, 10)

func setFn(_ fn2: IntFn){}
setFn(difference2)

func getFn() -> IntFn { difference2 }

func forward2(_ forward: Bool) -> (Int) -> Int {
    func next(_ input: Int) -> Int {
        input + 1
    }
    func previous(_ input: Int) -> Int {
        input - 1
    }
    return forward ? next : previous
}
forward2(true)(3)
forward2(false)(3)

//: [Next](@next)










