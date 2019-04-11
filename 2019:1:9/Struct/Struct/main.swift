//
//  main.swift
//  Struct
//
//  Created by Louis on 2019/1/9.
//  Copyright © 2019 Louis. All rights reserved.
//

import Foundation

func line() {
    print("=========================================")
}
// Structure 結構
// 建築物的藍圖
struct Position {
    var x = 0.0
    var y = 0.0
    var z = 0.0
}

var positionA = Position()   // 蓋好的建築物，建築物才具備功能(才能儲存資料)，Position後的()意味著建構
print(positionA)
print(positionA.x)
print(positionA.y)
print(positionA.z)

// 修改
positionA.x = 7
positionA.y = 8
positionA.z = 9

print(positionA)

line()

let positionB = Position(x: -1, y: 999, z: -2)  // 建構B建築物就直接給值
print(positionB)

var positionC = positionA
print(positionC)
positionC.x = 6
positionC.y = 6
positionC.z = 6

print(positionC)
print(positionA)
