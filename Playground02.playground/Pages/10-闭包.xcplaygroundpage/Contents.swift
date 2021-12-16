//: [Previous](@previous)

import Foundation

func sum(_ v1: Int, _ v2: Int) -> Int { v1 + v2 }

var fn = {
    (v1: Int, v2: Int) -> Int in
    return v1 + v2
}
fn(10, 20)

print("The end1")

func exec(v1: Int, v2: Int, fn: (Int, Int) -> Int) {
    print(fn(v1, v2))
}
exec(10, 20, fn)

print("The end2")

















//: [Next](@next)
