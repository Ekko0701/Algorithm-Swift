//
//  main.swift
//  Algorithm Swift
//  Dictionary

import Foundation

//  1-1. 빈 딕셔너리 생성
var emptyDict: [Int: String] = [:]
var emptyDict2 = [Int: String]()
var emptyDict3: Dictionary<Int, String> = Dictionary<Int, String>()
var emptyDict4: Dictionary = [Int:String]()

//  1-2. 초기화된 딕셔너리 생성
var dict1 = [1: "Apple", 2: "Samsung"] // 타입 추론
var dict2: [Int: String] = [1: "Apple", 2: "Orange"]
var dict3: Dictionary<Int, String> = [1: "Apple", 2: "Samsung"]
var dict4: Dictionary = [1: "Apple", 2: "Samsung"]
var dict5: [String: Any] = ["First": 1, "Second": "two"]    //단, key 값을 Any로 하는 것은 불가능

//  2. 딕셔너리 값 접근
var dict6: [Int: String] = [1: "Apple", 2: "Orange"]
print(dict6[1]) // Optional("Apple")
print(dict6[2]) // Optional("Orange")
print(dict6[3]) // nil
print(dict6[3, default: "Banana"])  // Banana

print(dict6.keys)  // [2, 1]
print(dict6.values)// ["Orange", "Apple"]


//  3. 딕셔너리에 값 추가 & 수정
var dict7 = [1: "Apple", 2: "Orange"]
dict7[3] = "Banana"                         // Insert
dict7[2] = "Lemon"                          // Update
                                            // [3: "Banana", 1: "Apple", 2: "Lemon"]
dict7.updateValue("Kiwi", forKey: 4)        // Insert, return nil
dict7.updateValue("Grape", forKey: 3)       // Update, Optinal("Banana")
                                            // [3: "Grape", 4: "Kiwi", 1: "Apple", 2: "Lemon"]

//  4. 딕셔너리 값 삭제
var dict8 = [1: "Apple", 2: "Orange", 3: "Banana"]
dict8[1] = nil
dict8.removeValue(forKey: 2)
dict8.removeAll()

//  5. isEmpty, count
var dict9 = [1: "Apple", 2: "Orange", 3: "Banana"]
dict9.isEmpty   // false
dict9.count     // 3

//  6. for, for-each
var dict10 = [1: "Apple", 2: "Orange", 3: "Banana"]
for i in dict10 {
    print("\(i.key) - \(i.value)")
}
// 2 - Orange 1 - Apple 3 - Banana
// 순서는 없다
for (key, value) in dict10 {
    print("\(key) - \(value)")
}
// 2 - Orange 1 - Apple 3 - Banana
// 순서는 없다

dict10.forEach { (key, value) in
    print("\(key) - \(value)")
}

dict10.forEach {
    print("\($0.key) - \($0.value)")
}

