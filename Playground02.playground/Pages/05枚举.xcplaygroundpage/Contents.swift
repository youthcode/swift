//: [Previous](@previous)

import Foundation

enum Direction {
    case north
    case south
    case east
    case west
}

var dir = Direction.west
dir = Direction.east
dir = .north
print(dir)

switch dir {
case .north:
    print("north")
case .south:
    print("south")
case .east:
    print("east")
case .west:
    print("west")
}

enum Score {
    case points(Int)
    case grade(Character)
}

var score = Score.points(96)
score = .grade("A")

switch score {
case let .points(i):
    print(i, "points")
case let .grade(i):
    print("grade", i)
}

enum Date {
    case digit(year: Int, month: Int, day: Int)
    case string(String)
}
var date = Date.digit(year: 2011, month: 9, day: 10)
date = .string("2011-09-10")
switch date {
case .digit(let year, let month, let day):
    print(year, month, day)
case let .string(value):
    print(value)
}

enum Password {
    case number(Int, Int, Int, Int)
    case gesture(String)
}
var pwd = Password.number(3, 5, 7, 8)
pwd = .gesture("12369")
switch pwd {
case let .number(n1, n2, n3, n4):
    print("number is ", n1, n2, n3, n4)
case let .gesture(str):
    print("gesture is", str)
}

enum PokerSuit : Character {
    case spade = "♠️"
    case heart = "♥️"
    case diamond = "♦️"
    case club = "♣️"
}
var suit = PokerSuit.spade
print(suit) // spade
print(suit.rawValue) // ♠️
print(PokerSuit.club.rawValue) // ♣️

enum Grade : String {
    case perfect = "A"
    case great = "B"
    case good = "C"
    case bad = "D"
}
print(Grade.perfect.rawValue)
print(Grade.great.rawValue)
print(Grade.good.rawValue)
print(Grade.bad.rawValue)

enum Direction1 : String {
    case north = "north"
    case south = "south"
    case east = "east"
    case west = "west"
}
// 等价于
enum Direction2 : String {
    case north, south, east, west
}
print(Direction2.north) // north
print(Direction2.north.rawValue) // north

enum Season1 : Int {
    case spring, summer, autumn, winter
}
print(Season1.spring.rawValue) // 0
print(Season1.summer.rawValue) // 1
print(Season1.autumn.rawValue) // 2
print(Season1.winter.rawValue) // 3

enum Season2 : Int {
    case spring = 1, summer, autumn = 4, winter
}
print(Season2.spring.rawValue)
print(Season2.summer.rawValue)
print(Season2.autumn.rawValue)
print(Season2.winter.rawValue)

enum AirthExpr {
    case number(Int)
    indirect case sum(AirthExpr, AirthExpr)
    indirect case difference(AirthExpr, AirthExpr)
}
let five = AirthExpr.number(5)
let four = AirthExpr.number(4)
let two = AirthExpr.number(2)
let sum = AirthExpr.sum(five, four)
let difference = AirthExpr.difference(sum, two)

func calculate(_ expr: AirthExpr) -> Int {
    switch expr {
    case let .number(value):
        return value
    case let .sum(left, right):
        return calculate(left) + calculate(right)
    case let .difference(left, right):
        return calculate(left) - calculate(right)
    }
}
calculate(difference)

var age = 10

MemoryLayout<Int>.size // 8
MemoryLayout<Int>.stride // 8
MemoryLayout<Int>.alignment // 8

MemoryLayout.size(ofValue: age)
MemoryLayout.stride(ofValue: age)
MemoryLayout.alignment(ofValue: age)

enum Password2 {
    case number(Int, Int, Int, Int)
    case other
}
var pwd2 = Password2.number(5, 6, 4, 7)
MemoryLayout.size(ofValue: pwd2) // 33，实际用到的空间大小
MemoryLayout.stride(ofValue: pwd2) // 40，分配占用的空间大小
MemoryLayout.alignment(ofValue: pwd2) // 8，对齐参数

enum Season3 {
    case spring, summer, autumn, winter ,spring1, summer1, autumn1, winter1 ,spring2, summer2, autumn2, winter2 ,spring3, summer3, autumn3, winter3
}
MemoryLayout<Season3>.size
MemoryLayout<Season3>.stride
MemoryLayout<Season3>.alignment

enum TestEnum {
    case test1, test2, test3
}
var t = TestEnum.test1
t = .test2
t = .test3







//: [Next](@next)
