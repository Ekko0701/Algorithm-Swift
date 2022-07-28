//
//  main.swift
//  Algorithm Swift
//  Basic_2
//  Array
import Foundation

//  빈 배열 생성
//  1차원
print("배열 생성\n----------------------------------------")
var array: [Int] = []
var array2 = [Int]()
var array3 : Array<Int> = []

//  2차원
var array4 = [[Int]]()

//  배열의 크기, 원소 지정후 생성
var array5 = Array(repeating: 0, count: 3) // [0, 0, 0]
let array6 = Array(repeating: Array(repeating: 0, count: 2), count: 3) // 2행 3열 배열 생성

//  범위값 (1 ~ 5)으로 배열 생성
var array7 = Array(1...5) // [1, 2, 3, 4, 5]

//  정렬
//  sort(), sorted()
print("배열 정렬\n----------------------------------------")
var array8 = [3, 2, 4, 1, 5]
array8.sort() // 원본 배열을 정렬 (default: 오름차순(<))
print("오름차순 정렬: \(array8)")
array8.sort(by: >)
print("내림차순 정렬: \(array8)")

var array9 = [3, 2, 4, 1, 5]
var array10 = array9.sorted(by: >) // 원본 배열 변경 없이 정렬된 배열을 반환
print("원본 배열: \(array9)")
print("내림차순 sorted 배열 \(array10)")


//  배열 원소 접근
var array11 = [0, 1, 2, 3, 4, 5]
array11[0]      // non-optional
array11[0...5]  // non-optional
array11.first   // optional
array11.last    // optional

array11.first { x in x % 2 == 0}    // 조건을 만족하는 첫번째 원소 리턴
array11.last { x in x % 2 == 0 }    // 조건을 만족하는 마지막 원소 리턴


//  원소 추가 - append
var array12 = [0, 1, 2]
array12.append(3)   //> [0, 1, 2, 3]
array12.append(contentsOf: [4, 5, 6])   //> [0, 1, 2, 3, 4, 5, 6]


//  원소 추가 - insert
//  !주의! - insert를 이용해 배열 중간에 원소를 삽입하는 경우에 오버헤드가 발생한다. insert 위치 뒤의 원소들을 재배치해야 하기 때문.
var array13 = [0, 1, 3]
array13.insert(2, at: 2)    //> [0, 1, 2, 3]
array13.insert(contentsOf: [5, 6, 7], at: 2) //> [0, 1, 5, 6, 7, 2, 3]


//  원소 제거 - remove
var array14 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

array14.remove(at: 2)           // [0, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
array14.removeFirst()           // [1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
array14.removeFirst(3)          // [5, 6, 7, 8, 9, 10, 11, 12]
array14.removeLast()            // [5, 6, 7, 8, 9, 10, 11]
array14.removeLast(2)           // [5, 6, 7, 8, 9]
array14.removeSubrange(0...1)   // [7, 8, 9]
array14.removeSubrange(0..<2)   // [9]
array14.removeAll()             // []

                                // remove(at:), removeFirst(), removeLast() 는 non-optional 값을 반환
                                // 값이 nil값일 경우 error 발생

var array15 = [0, 1, 2, 3, 4, 5, 6, 7, 8]
array15.removeAll(where: {$0 % 2 == 0})


//  원소 제거 - pop
var array16 = [0, 1, 2, 3]
print(array16.popLast())        // Optional(3)
                                // popLast는 Optional값을 반환.
                                // 빈 배열이라면 nil 반환


//  원소 포함 여부 확인 - contains
var array17 = [0, 1, 2, 3, 4, 5]
array17.contains(0)             // true
array17.contains(6)             // false
array17.contains { x in x % 2 == 0 } // true


//  원소 인덱스 확인
var array18 = [1, 2, 3, 4, 5]
array18.firstIndex(of: 2)               // Optional(1)
array18.lastIndex(of: 6)                // nil


//  조건을 만족하는 원소의 인덱스 확인
array18.firstIndex{ x in x % 2 == 0}    // Optional(1)
array18.lastIndex{ x in x % 2 != 0 }    // Optional(4)


//  배열 최대 최소 - max(), min()
var array19 = [1, 10, 100]
array19.max()   // Optional(100)
array19.min()   // Optional(1)


//  배열 반전 - reverse()
var array20 = ["가", "나", "다"]
array20.reverse()   // ["다", "나", "가"]

var array21 = [1, 2, 3]
var array21Re = array21.reversed()
for x in array21Re { print(x) }     // Reversed는 직접 참조 불가능. 순회 참조만 가능



//  배열 원소 스왑 - swapAt(_:, _:)
var array22 = [1, 2, 3, 4]
array22.swapAt(0, 3)    // [4, 2, 3, 1]

       
//  배열 크기
var array23 = [0, 1, 2]
array23.count   // 3

//  배열이 비었는지 확인
var array24: [Int] = []
array24.isEmpty // true

//-----------------------------------//

// map()
var array25 = [0, 1, 2, 3]
var array25Str = array25.map { String($0) }     // ["0", "1", "2", "3"]

// filter()
var array26 = [0, 1, 2, 3, 4, 5]
array26.filter { $0 % 2 == 0 }      // [0, 2, 4]

//  reduce()
var array27 = [1, 2, 3, 4, 5]
array27.reduce(0, +)    // 0과 모든 원소 합
array27.reduce(0, -)
