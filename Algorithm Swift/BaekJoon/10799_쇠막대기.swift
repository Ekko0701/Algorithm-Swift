//
//  main.swift
//  Algorithm Swift
//  BaekJoon
//  10799 - 쇠막대기

import Foundation

let input = readLine()!.map{ String($0) }
var stack: [String] = []
var last: String = ""
var result: Int = 0

// var check: Int = 0

for i in input {
    // check += 1
    if i == "(" {
        stack.append(i)
    } else if i == ")" {
        stack.removeLast()
        if last == ")" {    // 쇠막대기 끝 발견
            result += 1
        } else {            // 레이저 발견
            // print("레이저 발견")
            result += stack.count
        }
    }
    last = i
    // print("\(check)번째 - stack: \(stack), result: \(result)")
}

print(result)
