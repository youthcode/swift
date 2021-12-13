//: [Previous](@previous)

import Foundation

var str: String? = "123"
str = nil

var age: Int? // 默认就是nil
age = 10
age = nil

var array = [1, 15, 40, 29]
func get(_ index: Int) -> Int? {
    if index < 0 || index >= array.count {
        return nil
    }
    return array[index]
}
print(get(1)) // Optional(15)
print(get(-1))
print(get(4))

var age2: Int = 15
print(age2) // 15

var age3: Int? = 15
print(age3) // Optional(15)

var age4: Int? = 10
var ageInt: Int = age4!
ageInt += 10

var age5: Int?
//age5!

var number = Int("123")
if number != nil {
    print("字符串转换整数成功：\(number!)")
} else {
    print("字符串转换整数失败")
}

if let number = Int("123") {
    print("字符串转换整数成功: \(number)")
    // number是强制解包之后的Int值
    // number作用域仅限于这个大括号
} else {
    print("字符串转换整数失败")
}

enum Season : Int {
    case spring = 1, summer, autumn, winter
}
if let season = Season(rawValue: 6) {
    switch season {
    case .spring:
        print("the season is spring")
    default:
        print("the season is other")
    }
} else {
    print("no such season")
}
// no such season

if let first = Int("4") {
    if let second = Int("42") {
        if first < second && second < 100 {
            print("\(first) < \(second) < 100")
        }
    }
}
// 4 < 42 < 100

if let first = Int("4"),
    let second = Int("42"),
    first < second && second < 100 {
    print("\(first) < \(second) < 100")
}
// 4 < 42 < 100

// 遍历数组，将遇到的正数都加起来，如果遇到负数或者非数字，停止遍历
var strs = ["10", "20", "abc", "-20", "30"]
var index = 0
var sum = 0
while let num = Int(strs[index]), num > 0 {
    sum += num
    index += 1
}
print(sum)
// 30

let a: Int? = 1
let b: Int? = 2
let c = a ?? b
print(c) // Optional(1)

let a1: Int? = nil
let b1: Int? = 2
let c1 = a1 ?? b1
print(c1) // Optional(2)

let a2: Int? = nil
let b2: Int? = nil
let c2 = a2 ?? b2
print(c2) // nil

let a3: Int? = 1
let b3: Int = 2
let c3 = a3 ?? b3
print(c3) // 1

let a4: Int? = nil
let b4: Int = 2
let c4 = a4 ?? b4
print(c4) // 2

let a5: Int? = nil
let b5: Int = 2
// 如果不使用??运算符
let c5: Int
if let tmp = a5 {
    c5 = tmp
} else {
    c5 = b5
}

let a6: Int? = 1
let b6: Int? = 2
let c6 = a6 ?? b6 ?? 3
print(c6) // 1

let a7: Int? = nil
let b7: Int? = 2
let c7 = a7 ?? b7 ?? 3
print(c7) // 2

let a8: Int? = nil
let b8: Int? = nil
let c8 = a8 ?? b8 ?? 3
print(c8) // 3

let a9: Int? = nil
let b9: Int? = 2
if let c9 = a9 ?? b9 {
    print(c9)
}
// 类似于if a != nil || b != nil

if let c10 = a9, let d10 = b9 {
    print(c10)
    print(d10)
}
// 类似于if a != nil && b != nil

//guard 条件 else {
//    // do something...
//    退出当前作用域
//    // return, break, continue, throw error
//}


func login(_ info: [String : String]) {
    guard let username = info["username"] else {
        print("请输入用户名")
        return
    }
    guard let password = info["password"] else {
        print("请输入密码")
        return
    }
    // if username ...
    // is password ...
    print("用户名: \(username)", "密码 \(password)", "登陆ing")
}

let num1: Int! = 10
let num2: Int = num1
if num1 != nil {
    print(num1 + 6)
}
if let num3 = num1 {
    print(num3)
}

var age11: Int? = 10
// print("My age is \(age11)")
print("My age is \(age11!)")
print("My age is \(String(describing: age11))")
print("My age is \(age ?? 0)")

var num21: Int? = 10
var num22: Int?? = num21
var num23: Int?? = 10

var num31: Int? = nil
var num32: Int?? = num31
var num33: Int?? = nil
print(num32 == num33) // false

(num32 ?? 1) ?? 2 // 2
(num33 ?? 1) ?? 2 // 1











//: [Next](@next)
