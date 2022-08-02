//
//  main.swift
//  Algorithm Swift
//  BaekJoon
//  10866 - 덱
import Foundation

let N = Int(readLine()!)!
var deque: [Int] = []

for _ in 1...N {
    let command = readLine()!.components(separatedBy: " ")
    switch command[0] {
    case "push_front":
        deque.insert(Int(command[1])!, at: 0)
    case "push_back":
        deque.append(Int(command[1])!)
    case "pop_front":
        print(deque.isEmpty ? -1 : deque.removeFirst())
    case "pop_back":
        print(deque.isEmpty ? -1 : deque.removeLast())
    case "size":
        print(deque.count)
    case "empty":
        print(deque.isEmpty ? 1 : 0)
    case "front":
        print(deque.isEmpty ? -1 : deque.first!)
    case "back":
        print(deque.isEmpty ? -1 : deque.last!)
    default:
        break
    }
}
