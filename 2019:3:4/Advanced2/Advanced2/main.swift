//
//  main.swift
//  Advanced2
//
//  Created by Louis on 2019/3/4.
//  Copyright © 2019 Louis. All rights reserved.
//

import Foundation

var numberArray1 = [3, 66, 38, 50, 9, 84, 1]
let newArray = numberArray1.sorted()
print(newArray, numberArray1)
numberArray1.sort()
print(numberArray1)
numberArray1.sort(by: >) // 由大到小排列
print(numberArray1)
numberArray1.sort(by: <) // 由小到大排列
print(numberArray1)


numberArray1.reverse()  // 反向(顛倒)排列(非大小順序)
print(numberArray1)

numberArray1.swapAt(0, 2)   // 將Array[0]與Array[2]互換
print(numberArray1)

// filter(過濾)，可用來篩選奇數‘偶數
// let evenArray = numberArray1.filter { $0 % 2 == 0 }     精簡版 $0代表所得到的第一個參數
let evenArray = numberArray1.filter { number -> Bool in
    print("number:", number)
    return number % 2 == 0
}
print(evenArray)

// map(影射)
// let doubleValueArray = numberArray1.map(<#T##transform: (Int) throws -> T##(Int) throws -> T#>) 回傳的Ｔ為可變化型態，回傳什麼就是什麼型態
let doubleValueArray = numberArray1.map{ $0 * 2 }   // 精簡版
//let doubleValueArray = numberArray1.map { number -> Int in
//    print("number:", number)
//    return number * 2
//}
print(doubleValueArray)

let numberArray2 = numberArray1.map { String($0) }  // 轉為String
print(numberArray2)

let str1 = numberArray2.joined()    // 將String所有資料串連
print(str1)
let str2 = numberArray2.joined(separator: "_")  // 資料間是否需其他String串連
print(str2)

for number in numberArray1 {
    print(number)
}

numberArray1.forEach(<#T##body: (Int) throws -> Void##(Int) throws -> Void#>)
