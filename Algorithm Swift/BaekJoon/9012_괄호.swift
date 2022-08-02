//
//  main.swift
//  Algorithm Swift
//  BaekJoon
//  9012 - 괄호

import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let input = readLine()!
    var stack: [Character] = []
    var isEmpty: Bool = false
    
    for char in input {
        if char == "(" {
            stack.append(char)
        } else if char == ")" {
            if stack.popLast() == nil{
                isEmpty = true
                break
            }
        }
    }
    
    if isEmpty || !(stack.isEmpty) {
        print("NO")
    } else {
        print("YES")
    }
}

