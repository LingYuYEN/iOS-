//
//  main.swift
//  Forloop
//
//  Created by Louis on 2018/12/24.
//  Copyright © 2018 Louis. All rights reserved.
//

import Foundation

print("******")

for _ in 1 ... 6 { // _為佔位字元
    print("*", terminator: "")
}
print("")
print("=======================")

for index in 1 ... 6 {
    print(index, terminator: "\t")
}
print()

// 講師分享，撰寫APP寫到兩層迴圈約僅2成機會
let row = 4
let star = 5
for _ in 1 ... row {
    for _ in 1 ... star{
        print("*", terminator: "")
    }
    print()
}

print("=======================")

for star in 1 ... star {
    for _ in 1 ... star{
        print("*", terminator: "")
    }
    print()
}

for i in 2 ... 9{
    for j in 1 ... 9{
        print("\(i) * \(j) = \(i*j)", terminator: "\t")
    }
    print()
}

for char in "This is a book."{
    if char == "a" {    // 遇到a不print
        continue    // 略過這一次
    }
    if char == "o" {
        break       // 直接跳出迴圈
    }
    print(char)
}
