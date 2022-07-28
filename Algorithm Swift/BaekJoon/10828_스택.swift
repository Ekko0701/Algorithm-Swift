//
//  main.swift
//  Algorithm Swift
//  BackJoon
//  10826 - 스택

import Foundation

let N = Int(readLine()!)!
var stack: [Int] = []

for _ in 0...(N-1) {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    switch input[0] {
    case "push":
        push(Int(input[1])!)
        break
    case "pop":
        print(pop())
        break
    case "size":
        print(size())
        break
    case "empty":
        print(empty())
        break
    case "top":
        print(top())
        break
    default:
        break
    }
}

func push(_ x: Int){
    stack.append(x)
}

func pop() -> Int {
    if let pop = stack.popLast() {
        return pop
    } else {
        return -1
    }
}

func size() -> Int {
    return stack.count
}

func empty() -> Int {
    if stack.isEmpty {
        return 1
    } else {
        return 0
    }
}

func top() -> Int {
    if let last = stack.last {
        return last
    } else {
        return -1
    }
}
