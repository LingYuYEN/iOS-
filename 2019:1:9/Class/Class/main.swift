//
//  main.swift
//  Class
//
//  Created by Louis on 2019/1/9.
//  Copyright © 2019 Louis. All rights reserved.
//

import Foundation

func line() {
    print("=========================================")
}
// Class 類別(比起Structure，官方較建議使用Structure)

class Position {
    var x = 0.0
    var y = 0.0
    var z = 0.0
}

var positionA = Position()   // 蓋好的建築物，建築物才具備功能(才能儲存資料)，Position後的()意味著建構
dump(positionA)
print(positionA.x)
print(positionA.y)
print(positionA.z)

// 修改
positionA.x = 7
positionA.y = 8
positionA.z = 9

dump(positionA)

line()

// 這邊是做指標(參考)的動作，會影響原先結果
var positionC = positionA   // 當變動class時，兩者會連動變動，故45行結果同positionC
dump(positionC)
positionC.x = 6
positionC.y = 6
positionC.z = 6

dump(positionC)
dump(positionA)

line()

class Cube {
    struct Pos {
        var x = 0.0
        var y = 0.0
        var z = 0.0
    }
    var pos = Pos() // 嘗試把此建構拿到Cube外
    var width = 0.0
    var height = 0.0
    var length = 0.0
}
var cube = Cube()

dump(cube)
cube.width = 1
cube.height = 2
cube.length = 3
cube.pos = Cube.Pos(x: 4, y: 5, z: 6)
dump(cube)
