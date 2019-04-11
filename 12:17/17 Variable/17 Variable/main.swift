//
//  main.swift
//  17 Variable
//
//  Created by Louis on 2018/12/17.
//  Copyright © 2018 Louis. All rights reserved.
//

import Foundation

var age = 18
print(age)
age = 19
print(age)

var height = 170
print("height:\(height)")
height = 162
print(height)

var 體重 = 70
print(體重)
體重 = 120
print("體重 = \(體重)")

print(Int.max) // 印出整數最大值
print(Int.min) // 印出整數最小值

let max = Int.max
// print(max + 1) --> 當數值超過時會造成閃退(雖然在xcode可能可執行)

let doubleNumber = 99.90000000000000000000001
let floatNumber = Float(doubleNumber)
let integerNumber = Int(floatNumber)
//留意資料轉型的流失
/*
 Float為32位元，最少有6位數字的精度
 Double為64位元，最少有15位數字的精度
 */
print(doubleNumber, floatNumber, integerNumber)

let i1 = 100_000_000
let i2 = 1_0000_0000
let f1 = 3.141_592_6
//運用底線以方便閱讀，不影響數值

// optional 的 Int
var number: Int? = nil // null
// print(number! + 1) <-- force unwrapping(!)後如為nil將會出錯(閃退)

// Int Double Float String Boolean
