//
//  main.swift
//  Operator2
//
//  Created by Louis on 2018/12/19.
//  Copyright © 2018 Louis. All rights reserved.
//

import Foundation

var a = -5, b = 20, c:Int
c = 3
print(a, b, c)

print(a + 9)
print("a = \(a)")

a += 9
print(a)

var link = "http://"
print(link + "www.google.com")
link += "www."
link += "google."
link += "com"
print(link)

print(a, b)
print(a > b)    //false
print(a < b)    //true

print(a >= b)   //false
print(a <= b)   //true
print(a == b)   //false
print(a != b)   //true
print(a = b)    // void 有點類似空值，故會印出()
a = 1

print("=======================")
let answer = a < b
print(answer)
print(!answer)

// 或(||)，條件中其中一項為true結果即為true
// 且(&&)，條件中其中一項為false結果即為false

// 三元運算子
// bool ? true : false
let result = answer ? "通過考試" : "練習不足，再努力"
print(result)

// 兩數互換
// 方法1
let temp = a
a = b
b = temp
print(a, b)

// 方法2(apple官方建議減少使用有＆的程式碼，以提高安全性)
swap(&a, &b)
print(a, b)

// 方法3(apple 官方建議使用 tuple 方式替代)
(a, b) = (b, a)

let password = "beojwo4tjemermb"
print(password == "Gjun007")
print(password != "Gjun007")

print("=======================")
let range = 13 ... 18
print(range ~= 43)  // ~= 意即包含
print(range ~= 16)
print(range ~= 13)
print(range ~= 18)

print("=======================")
let range2 = 3 ..< 5
print(range ~= 3)
print(range ~= 4)
print(range ~= 5)









