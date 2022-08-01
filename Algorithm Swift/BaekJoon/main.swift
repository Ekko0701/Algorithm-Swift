//
//  main.swift
//  Algorithm Swift
//  BaekJoon
//  1158 - 요세푸스 문제
import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }

var N = input[0]
let K = input[1]
var arr = Array(1...N)
var result = [Int]()
var index = 0

while !(arr.isEmpty) {
    if index + K > arr.count {
        index = index + K - arr.count - 1
    } else {
        index = index + K - 1 // k 3
    }
    if index == arr.count {
        index = index % arr.count
    }
    result.append(arr.remove(at: index))
}

print("<" + result.map{ String($0) }.joined(separator: ", ") + ">")


