//
//  main.swift
//  Algorithm Swift
//  BaekJoon
//  17298 - 오큰수


import Foundation

// 시간 초과 풀이
/*
let N = Int(readLine()!)!
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var flag: Bool = true

for i in 0..<N {
    for j in i..<N {
        if arr[i] < arr[j] {
            print(arr[j])
            flag = false
            break
        }
        flag = true
    }
    if flag {
        print(-1)
    }
}
*/
/*
let N = Int(readLine()!)!
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//arr.reverse()
var stack: [Int] = []

for i in arr {
    
}
*/

let N = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map { Int($0)! }
var stack: [Int] = []
var result: [Int] = Array(repeating: -1, count: N)
for i in 0..<N {
    while !stack.isEmpty && input[stack.last!] < input[i] {
        result[stack.popLast()!] = input[i]
    }
    stack.append(i)
}

print(result.map {String($0)}.joined(separator: " "))



