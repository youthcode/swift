//
//  main.swift
//  TestSwift
//
//  Created by yupeng wang on 2021/11/24.
//

import Foundation

enum TestEnum {
    case test1, test2, test3
}
var t = TestEnum.test1
print(Mems.ptr(ofVal: &t))
t = .test2
t = .test3
print("123")

//print(MemoryLayout<TestEnum>.size)
//print(MemoryLayout<TestEnum>.stride)
//print(MemoryLayout<TestEnum>.alignment)

