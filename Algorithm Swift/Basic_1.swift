//
//  Basic.swift
//  Algorithm Swift
//  Basic_1
//  ReadLine(), Split(), Components(), map()

import Foundation

//  입력
//  ReadLine()
let input = readLine() // return Optional String
print(input!)
print(type(of: input)) //> Optional<String>


let input2 = readLine()
if let input2 = input2 { // optional binding (if let)
    print(input2)
    print(type(of: input2)) //> String
}

let input3 = Int(readLine()!)! // 정수 입력
print(input3)
print(type(of: input3)) //> Int


//  분할
//  Split()

let input4 = readLine()! //< e k k o
print(input4) //> e k k o

let split = input4.split(separator: " ") // 공백으로 분할
print(split) //> ["e", "k", "k", "o"]
print(type(of: split)) //> Array<Substring>
print(type(of: split[0])) //> SubString

let subStringToString = split.map {  String($0) }
print(subStringToString)
print(type(of: subStringToString))

let split2 = input4.split{ $0 == " "}
print(split2)
print(type(of: split2))

let split3 = input4.components(separatedBy: " ")
print(type(of: split3)) //> Array<String>

let input5 = readLine()!.split(separator: " ").map { Int(String($0))! }
print(input5)
print(type(of: input5)) //> Array<Int>

