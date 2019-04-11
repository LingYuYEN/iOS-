//
//  main.swift
//  Protocol1
//
//  Created by Louis on 2019/1/14.
//  Copyright © 2019 Louis. All rights reserved.
//

import Foundation

// Protocol 協定
protocol Rect {
    func getRectArea(width: Double, height: Double) -> Double
    func getRectPerimeter(width: Double, height: Double) -> Double
}

protocol Circle {
    func getCircleArea(radius: Double) -> Double
    func getCirclePerimeter(radius: Double) -> Double
}

// 當無尊崇上述兩規則，故以下錯誤
class Object: Rect, Circle {
    func getRectArea(width: Double, height: Double) -> Double {
        return width * height
    }
    func getRectPerimeter(width: Double, height: Double) -> Double {
        return (width + height) * 2
    }
    func getCircleArea(radius: Double) -> Double {
        return pow(radius, 2) * Double.pi
    }
    func getCirclePerimeter(radius: Double) -> Double {
        return 2 * radius * Double.pi
    }
    
}
