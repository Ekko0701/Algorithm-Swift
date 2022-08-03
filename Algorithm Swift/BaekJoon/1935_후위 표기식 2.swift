//
//  1935_후위 표기식 2.swift
//  Algorithm Swift
//  Backjoon
//  1935 - 후위 표기식 2

import Foundation

let N = Int(readLine()!)!
let input = readLine()!

var stack: [Double] = []
var numbers: [Double] = []

for _ in 0..<N {
    let num = Double(readLine()!)!
    numbers.append(num)
}

for char in input {
    if char.isUppercase {
        let index = Int(char.asciiValue! - 65)
        stack.append(numbers[index])
    } else {
        let first = stack.removeLast()
        let second = stack.removeLast()
        if char == "+" {
            stack.append(first + second)
        } else if char == "-" {
            stack.append(second - first)
        } else if char == "*" {
            stack.append(first * second)
        } else {
            stack.append(second / first)
        }
    }
}
print(String(format: "%.2f", stack[0]))
