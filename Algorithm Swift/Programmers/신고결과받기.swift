//
//  main.swift
//  Algorithm Swift
//  Programmers
//  신고 결과 받기

import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var result: [Int] = Array(repeating: 0, count: id_list.count)
    var reported: [String: [String]] = [:]
    var banned: [String] = []
    
    id_list.forEach { id in
        reported[id] = []
    }
    
    for i in Set(report) {
        let splitId = i.split(separator: " ").map { String($0) }
        reported[splitId[1]]?.append(splitId[0])
    }
    
    for (key, value) in reported {
        if value.count >= k {
            banned.append(key)
        }
    }
    
    for i in banned {
        reported[i]?.forEach{ id in
            result[id_list.firstIndex(of: id)!] += 1
        }
    }
    
    return result
}

print(solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2))

