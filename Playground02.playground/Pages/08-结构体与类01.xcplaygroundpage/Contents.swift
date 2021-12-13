//: [Previous](@previous)

import Foundation
import Darwin

struct Date {
    var year: Int
    var month: Int
    var day: Int
}
var date = Date(year:2019, month:6, day:23)

struct Point {
    var x: Int
    var y: Int
}
var p1 = Point(x: 10, y: 10)
// var p2 = Point(y:10) 编译错误
// var p3 = Point(x:10) 编译错误
// var p4 = Point() 编译错误

struct Point2 {
    var x: Int = 0
    var y: Int = 0
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}
var p21 = Point2(x: 10, y: 10)
// var p22 = Point(y: 10) error
// var p23 = Point(x: 10) error
// var p24 = Point() error

class Point3 {
    var x: Int = 0
    var y: Int = 0
}
let p31 = Point3()
// let p32 = Point3(x: 10, y: 20) error
// let p33 = Point3(x: 10) error
// let p34 = Point3(y: 20) error

//class Point4 {
//    var x: Int
//    var y: Int
//}
//let p41 = Point4()

class Point51 {
    var x: Int
    var y: Int
    init() {
        x = 10
        y = 20
    }
}











//: [Next](@next)
