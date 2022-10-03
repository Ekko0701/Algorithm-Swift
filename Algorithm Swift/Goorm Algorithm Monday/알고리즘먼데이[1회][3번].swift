//
//  main.swift
//  Algorithm Swift
//  Goorm
//  알고리즘 먼데이[1회][4번] 소수 찾기


import Foundation
var T = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map{ Int($0)! }
var result = 0

func sieveOfEratosthenes(num: Int) -> [Int] {
    var arr = Array(repeating: true, count: num+1)
    var primes = [Int]()
    for i in 2..<num+1 {
        if arr[i] == true {
            for j in stride(from: i, through: num, by: i) {
                    arr[j] = false
            }
            primes.append(i)
        }
    }
    return primes
}

var resultArr = sieveOfEratosthenes(num: T)

for i in resultArr {
    result += input[i-1]
}

print(result)
