//
//  main.swift
//  Algorithm Swift
//  BaekJoon
//  1406 - 에디터

import Foundation

var arrL = Array(readLine()!)
var arrR: [Character] = []
var M = Int(readLine()!)!


func P(_ x: Character) {
    arrL.append(x)
}

func L() {
    if !(arrL.isEmpty) {
        arrR.append(arrL.popLast()!)
    }
}

func D() {
    if !(arrR.isEmpty) {
        arrL.append(arrR.popLast()!)
    }
}

func B() {
    if !(arrL.isEmpty) {
        arrL.popLast()!
    }
}

for _ in 0..<M {
    var command = readLine()!
    switch command {
    case "L":
        L()
        break
    case "D":
        D()
        break
    case "B":
        B()
        break
    default:
        P(command.last!)
    }
}

print(String(arrL) + String(arrR).reversed())

