//
//  main.swift
//  Algorithm Swift
//  BaekJoon
//  1874 - 스택 수열

import Foundation

let n = Int(readLine()!)!

var stack: [Int] = []
var result: [String] = []
var num = 1

for _ in 0..<n {
    let input = Int(readLine()!)!
    
    while num <= input {
        stack.append(num)
        result.append("+")
        num += 1
    }
    
    if stack.last == input {
        stack.removeLast()
        result.append("-")
    } else {
        print("NO")
        exit(0)
    }
}

print(result.joined(separator: "\n"))
 


