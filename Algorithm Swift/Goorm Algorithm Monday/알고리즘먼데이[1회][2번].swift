//
//  main.swift
//  Algorithm Swift
//  Goorm
//  알고리즘 먼데이[1회][2번] 동명이인


import Foundation

let input = readLine()!.split(separator: " ").map{ String($0) }
var count = 0

for _ in 0..<Int(input[0])! {
    let inputName = String(readLine()!)
    
    if inputName.contains(input[1]) {
        count += 1
    }
}

print(count)
