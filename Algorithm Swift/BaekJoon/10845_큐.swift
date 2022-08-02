//
//  main.swift
//  Algorithm Swift
//  BaekJoon
//  10845 - Queue

import Foundation

var queue: [Int] = []

func push(_ x: Int) {
    queue.append(x)
}

func pop() -> Int {
    if queue.isEmpty {
        return -1
    } else {
        return queue.removeFirst()
    }
}

func size() -> Int {
    return queue.count
}

func empty() -> Int {
    return queue.isEmpty ? 1 : 0
}

func front() -> Int {
    return queue.first ?? -1
}

func back() -> Int {
    return queue.last ?? -1
}

var N = Int(readLine()!)!

for _ in 0..<N {
    let command = readLine()!.split(separator: " ")
    switch command[0] {
    case "push":
        push(Int(command[1])!)
    case "pop":
        print(pop())
        break
    case "size":
        print(size())
        break
    case "empty":
        print(empty())
        break
    case "front":
        print(front())
        break
    case "back":
        print(back())
        break
    default:
        break
    }
}
