//
//  main.swift
//  Inheritance
//
//  Created by Louis on 2019/1/14.
//  Copyright © 2019 Louis. All rights reserved.
//

import Foundation

// Inheritance: 繼承
// 只有類別(class)可以繼承，結構(struct)不能繼承

/*  (繼承資訊輸入於super class)
class <#name#>: <#super class#> {
    <#code#>
}
 */

class Car {
    var passenger = 0
    func boarding(passenger: Int) {
        self.passenger += passenger
    }
    func showInfo() {
        print("車上人數：", self.passenger)
    }
}

class Bus: Car {
    func getOff(passenger: Int) {
        self.passenger -= passenger
    }
}
var bus = Bus()
bus.boarding(passenger: 2)
bus.showInfo()
bus.boarding(passenger: 5)
bus.showInfo()

bus.getOff(passenger: 3)
bus.showInfo()
bus.getOff(passenger: 10)
bus.showInfo()

class BaseObject {
    var width = 0.0
    var height = 0.0
    
    func getSize() -> Double {
        return self.width * self.height
    }
    
    var size: Double {
        return self.width * self.height
    }
}

class Rect: BaseObject {
    
}

var rect = Rect()
rect.width = 5
rect.height = 6
print(rect.size)
print(rect.getSize())

class Circle: BaseObject {
    var center = (x: 0.0, y: 0.0)
    var radius = 0.0
    
    // 重寫
    override func getSize() -> Double {
        return pow(self.radius, 2) * Double.pi    // r的2次方 * pi
    }
    
    override var size: Double {
        return pow(self.radius, 2) * Double.pi    // r的2次方 * pi
    }
}

var circle = Circle()
circle.radius = 10
print(circle.getSize())
circle.radius = 20
print(circle.size)

class Cube: BaseObject {
    
    /// 物理意義上的高
    var elevation = 0.0
    
    override func getSize() -> Double {
        // return self.width * self.height * self.elevation
        return super.getSize() * self.elevation
    }
    override var size: Double {
        return super.getSize() * self.elevation
    }
    
}

var cube = Cube()
cube.width = 3
cube.height = 4
cube.elevation = 10

print(cube.getSize())
print(cube.size)

