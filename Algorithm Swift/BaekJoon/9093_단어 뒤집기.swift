//
//  main.swift
//  Algorithm Swift
//  BaekJoon
//  9093 - 단어 뒤집기

import Foundation

let N = Int(readLine()!)!

for _ in 0...(N-1) {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    var result: String = ""
    for char in input{
        result += char.reversed() + " "
    }
    print(result)
}
