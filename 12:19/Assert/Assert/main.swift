//
//  main.swift
//  Assert
//
//  Created by Louis on 2018/12/19.
//  Copyright © 2018 Louis. All rights reserved.
//

import Foundation

// Boolean
// Asert 斷言
// true:真, false:假

let isReal = true
print(isReal)

var isOn = true
print(!isOn, isOn) //經過！後得到false
isOn = false
print(!isOn, isOn) //經過！後得到true

print("==================")
isOn = !isOn
print(isOn)

isOn.toggle()   //.toggle也是拿來反向使用
print(isOn)

var number = 0
assert(number >= 0)
//假設number為人數, 透過assert斷言必須大於等於0, 否則會閃退

/*
 1.函式內false，故會閃退
 assert(isOn)
 2.同1，並提供訊息
 assert(isOn, "特效應該要是開啟的")
 3.只要執行到此行就會閃退
 assertionFailure()
 4.同3，並提供訊息
 assertionFailure("不管什麼原因，只要執行到此行，就會閃退並提供訊息")
 
 *** assert主要於開發除錯使用，當上架後會失效
 
 */

