//
//  main.swift
//  Algorithm Swift
//  BaekJoon
//  17413 - 단어 뒤집기 2
import Foundation

//  풀이 1
/*
let input = readLine()!
var stack: String = ""
var tag: String = ""

for i in input {
    if i == "<" {
        tag.append(i)
        if !(stack.isEmpty) {
            print(String(stack.reversed()), terminator: "")
            stack = ""
        }
    } else if i == ">" {
        tag.append(i)
        print(tag, terminator: "")
        tag = ""
    } else {
        if tag.first == "<" {
            tag.append(i)
        } else if i == " " {
            print(String(stack.reversed()),terminator: " ")
            stack = ""
        } else {
            stack.append(i)
        }
    }
}

if !stack.isEmpty {
    print(String(stack.reversed()))
}
 */

//  풀이 2 - flag
let input = readLine()!

var stack: [Character] = []
var result = ""
var flag: Bool = false

for char in input {
    if char == "<" {
        flag = true
        while !(stack.isEmpty) {
            result.append(stack.popLast()!)
        }
        result.append(char)
    } else if char == ">" {
        flag = false
        result.append(char)
    } else if flag {
        result.append(char)
    } else {
        if char == " " {
            while !(stack.isEmpty) {
                result.append(stack.popLast()!)
            }
            result.append(char)
        } else {
            stack.append(char)
        }
    }
}

if !stack.isEmpty {
    result.append(String(stack.reversed()))
}

print(result)



