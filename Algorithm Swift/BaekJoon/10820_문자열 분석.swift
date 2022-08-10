//
//  main.swift
//  Algorithm Swift
//  BOJ
//  10820 - 문자열 분석

while let input = readLine() {
    var result = [0, 0, 0, 0]
    for char in input {
        let ascii = char.asciiValue!
        if ascii >= 65 && ascii <= 90 {
            result[1] += 1
        } else if ascii >= 97 && ascii <= 122 {
            result[0] += 1
        } else if ascii >= 48 && ascii <= 57 {
            result[2] += 1
        } else {
            result[3] += 1
        }
    }
    print(result.map{ String($0) }.joined(separator: " "))
}
   

