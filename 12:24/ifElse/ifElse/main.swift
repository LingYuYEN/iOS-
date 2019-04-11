//
//  main.swift
//  ifElse
//
//  Created by Louis on 2018/12/24.
//  Copyright © 2018 Louis. All rights reserved.
//

import Foundation

let a = 31, b = 0, c = -23

if a > 0{
    print("a是正數")
}
if a < 0 {
    print("a是負數")
}

if a > 0{
    print("a是正數")
} else {
    print("a是負數")
}

if c > 0 {
    print("c是正數")
} else {
    print("c是負數")
}

print("========================")

if a > 0 {
    print("a是正數")
} else if a == 0 {
    print("a為零，不是正數，也不是負數")
} else {
    print("a是負數")
}

// 巢狀的 if-else
// 找出a,b,c中最大的數（暫不考慮相等的問題）
var max = a
if b > a {
    max = b
} else if c > a {
    max = c
}
print("\(max)最大")
