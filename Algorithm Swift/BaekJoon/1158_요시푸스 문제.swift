//
//  main.swift
//  Algorithm Swift
//  BaekJoon
//  1158 - 요세푸스 문제
import Foundation
// 풀이 1

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }

var N = input[0]
let K = input[1]
var arr = Array(1...N)
var result = [Int]()
var index = K - 1

while !(arr.isEmpty) {
    result.append(arr.remove(at: index))
    if arr.isEmpty { break }
    index = (index + (K - 1)) % arr.count
}

print("<" + result.map{ String($0) }.joined(separator: ", ") + ">")

// g
// 풀이 2
/*
struct Queue {
    var queue: [Int] = []
    var head: Int = 0
    
    public mutating func enqueue(_ element: Int) {
        queue.append(element)
    }
    
    public mutating func dequeue() -> Int{
        let element = queue[head]
        head += 1
        return element
    }
    
    public var count: Int {
        return queue.count
    }
    
}

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var N = input[0]
let K = input[1]
var queue = Queue()
var result = [Int]()

for i in 1...N {
    queue.enqueue(i)
}

while queue.count - queue.head != 0 {
    for _ in 0..<(K-1) {
        queue.enqueue(queue.dequeue())
    }
    result.append(queue.dequeue())
}

print("<" + result.map{ String($0) }.joined(separator: ", ") + ">")
*/
