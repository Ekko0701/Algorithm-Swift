//
//  main.swift
//  Algorithm Swift
//  Goorm
//  알고리즘 먼데이[1회][1번] 경로의 개수
import Foundation

var result = 1
let T = Int(readLine()!)!

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
for i in input {
    result *= i
}

print(result)
