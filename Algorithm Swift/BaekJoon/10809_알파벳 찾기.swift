//
//  main.swift
//  Algorithm Swift
//  BOJ
//  10809 - 알파벳 찾기

import Foundation

let S = Array(readLine()!)
var result: [Int] = Array(repeating: -1, count: 26)

for char in S {
    result[Int(char.asciiValue!) - 97] = S.firstIndex(of: char)!
}

print(result.map{ String($0) }.joined(separator: " "))
