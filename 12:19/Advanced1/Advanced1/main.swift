//
//  main.swift
//  Advanced1
//
//  Created by Louis on 2018/12/19.
//  Copyright © 2018 Louis. All rights reserved.
//

import Foundation

// arc4random()，取得UInt32的隨機數
let randomNumber1 = arc4random()
// UInt32(U意指unsign)
print(randomNumber1)


print(randomNumber1 % 5 + 1)            // 隨機1~5
print(arc4random_uniform(5) + (1))      // 結果同上

print("====================")
print(Int.random(in: 13 ... 18))        // 取範圍內的隨機
print(Double.random(in: 3.14 ... 9))    // 取範圍內的隨機double值
print(Float.random(in: 3.14 ... 9))     // 取範圍內的隨機float值
print(CGFloat.random(in: 3.14 ... 9))   // (core graphic)使用在繪圖相關隨機位置
print(Bool.random())                    // 隨機true and false
print(arc4random() % 2 == 0)            // 早期true and false寫法

print("====================")
print(Int32.max)
print(UInt32.max)
print(Int16.max)
print(Int8.max)

print("====================")
let binary = 0b1001000  // 二進位
print(binary)
let octal = 0o110       // 八進位
print(octal)
let hexadecimal = 0x48  // 十六進位
print(hexadecimal)

print("====================")
// typealias 別名/綽號
typealias Score = Int
let chinese: Score = 90
let english: Score = 59
let math: Score = 87
let total = chinese + english + math
let average = total / 3
print(average)

print(3 + 7)
NSLog("\(3 + 7)")   // next step(印出值，但帶有時間)

print("====================")
let fish = "🐟"; print(fish)

// print(<#T##items: Any...##Any#>, separator: <#T##String#>, terminator: <#T##String#>)
// print(<#T##items: Any...##Any#>, terminator: <#T##String#>)
// terminator 結尾控制(預設為換行)/""用來控制不換行
print("I ", terminator: "")
print("have ", terminator: "")
print("a ", terminator: "")
print("pen.", terminator: "")

// \n代表換行(亦為terminator預設)，\t代表tab
print("I have \n an app\tle")

// print(<#T##items: Any...##Any#>, separator: <#T##String#>)
// separator 每個字元間控制
print(1, 2, 3, 4, 5, separator: "間隔")

