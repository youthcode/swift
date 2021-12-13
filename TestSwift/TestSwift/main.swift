//
//  main.swift
//  TestSwift
//
//  Created by yupeng wang on 2021/11/24.
//

import Foundation

func testValueType() {
    struct Point {
        var x: Int
        var y: Int
    }
    var p1 = Point(x: 10, y: 20)
    var p2 = p1
    p2.x = 11
    p2.y = 22
    print("123")
}
testValueType()

func testClassAndStruct() {
    class Size {
        var width = 1
        var height = 2
    }
    
    struct Point {
        var x = 3
        var y = 4
    }
    
    print("MemoryLayout<Size>.stride", MemoryLayout<Size>.stride)
    print("MemoryLayout<Point>.stride", MemoryLayout<Point>.stride)
    
    var size = Size()
    print("size变量的地址", Mems.ptr(ofVal: &size))
    print("size变量的内容", Mems.memStr(ofVal: &size))
    
    print("size所指向内存的地址", Mems.ptr(ofRef: size))
    print("size所指向内存的内容", Mems.memStr(ofRef: size))
    
    print("-------------------")
    
    var point = Point()
    print("point变量的地址", Mems.ptr(ofVal: &point))
    print("point变量的内存", Mems.memStr(ofVal: &point))
    print("-------------------")
}
testClassAndStruct()

func testStruct(){
    struct Point {
        var x: Int = 10
        var y: Int = 20
    }
    var p = Point()
    print(Mems.memStr(ofVal: &p))
    print(MemoryLayout<Point>.size)
    print(MemoryLayout<Point>.stride)
    print(MemoryLayout<Point>.alignment)
}
testStruct()

//func test(){
//    var a = 3
//    var b = a + 1
//    print(b)
//}
//test()

enum TestEnum {
    case test1(Int, Int, Int)
    case test2(Int, Int)
    case test3(Int)
    case test4(Bool)
    case test5
}
var e = TestEnum.test1(10, 20, 30)
print(Mems.ptr(ofVal: &e))
switch e {
case let .test1(v1, v2, v3):
    print("test1", v1, v2, v3)
case let .test2(v1, v2):
    print("test2", v1, v2)
case let .test3(v1):
    print("test3", v1)
case let .test4(v1):
    print("test4", v1)
case .test5:
    print("test5")
}

//print(MemoryLayout<TestEnum>.size) // 8
//print(MemoryLayout<TestEnum>.stride) // 8
//print(MemoryLayout<TestEnum>.alignment) // 8

var num1: Int? = nil
var num2: Int?? = num1
var num3: Int?? = nil
print("123")











