//: [Previous](@previous)

import Foundation

// for
let names = ["Anna", "Alex", "Brain", "Jack"]
for i in 0...3 {
    print(names[i])
}

let range = 1...3
for i in range {
    print(names[i])
}

let a = 1
var b = 2
for i in a...b {
    print(names[i])
}

// i默认是let，有需要时可以声明为var
for var i in 1...3 {
    i += 5
    print(i)
}

for _ in 1...3 {
    print("for")
}

for i in 1..<5 {
    print(i)
}

let names2 = ["Anna", "Alex", "Brian", "Jack"]
for name in names2[0...3] {
    print(name)
}

for name in names[2...] {
    print(name)
}

for name in names[...2] {
    print(name)
}

for name in names[..<2] {
    print(name)
}

let range2 = ...5
range2.contains(7) // false
range2.contains(4) // true
range2.contains(-3) // true

let range11: ClosedRange<Int> = 1...3
let range22: Range<Int> = 1..<3
let range33: PartialRangeThrough<Int> = ...5

let stringRange1 = "cc"..."ff"
stringRange1.contains("cb") //false
stringRange1.contains("dz") // true
stringRange1.contains("fg") //false

let stringRange2 = "a"..."f"
stringRange2.contains("d") // true
stringRange2.contains("h") // false

let characterRange: ClosedRange<Character> = "\0"..."~"
characterRange.contains("G")

let aa: Character = "a"
let zz: Character = "z"
let rangeaz = aa...zz
rangeaz.contains("b") // true
rangeaz.contains("B") // false

let hours = 11
let hourInterval = 2
// tickMark的取值：从4开始，累加2，不超过11
for tickMark in stride(from: 4, through: hours, by: hourInterval) {
    print(tickMark)
} // 4 6 8 10

var number = 1
switch number {
case 1:
    print("number is 1")
    break
case 2:
    print("number is 2")
    break
default:
    print("number is other")
    break
}

var number2 = 1
switch number2 {
case 1:
    print("number is 1")
    break
case 2:
    print("number is 2")
    break
default:
    print("number is other")
    break
}

let count = 62
switch count {
case 0:
    print("none")
case 1..<5:
    print("a few")
case 12..<100:
    print("several")
case 100..<1000:
    print("hundreds of")
default:
    print("many")
}

let point = (1, 1)
switch point {
case (0, 0):
    print("the origin")
case (_, 0):
    print("on the x-axis")
case (0, _):
    print("on the y-axis")
case (-2...2, -2...2):
    print("inside the box")
default:
    print("outside of the box")
}

let point2 = (2, 0)
switch point2 {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x),\(y)")
}

let point3 = (1, -1)
switch point3 {
case let (x, y) where x == y:
    print("on the line x == y")
case let (x, y) where x == -y:
    print("on the line x == -y")
case let (x, y):
    print("(\(x),\(y)) is just some arbitrary point")
}

var numbers = [10, 20, -10, -20, 30, -30]
var sum = 0
for num in numbers where num > 0 {
    sum += num
}
print(sum)





//: [Next](@next)
