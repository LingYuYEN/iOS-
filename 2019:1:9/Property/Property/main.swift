//
//  main.swift
//  Property
//
//  Created by Louis on 2019/1/9.
//  Copyright © 2019 Louis. All rights reserved.
//

import Foundation

/// 位置
struct Point {
    var x = 0.0
    var y = 0.0
}

/// 尺寸
struct Size {
    var width = 0.0
    var height = 0.0
}

/// 矩形
struct Rect {
    var orign: Point    // 結構或類別內的建構方式，可以沒有初始值
    var size = Size(width: 1.0, height: 1.0)
    
    var center: Point {
        // getter(get取得)
        get {
            return Point(x: orign.x + size.width / 2, y: orign.y + size.height / 2)
        }
        // setter(set設定)
        set(newValue) {     // (newValue)可省略
            orign.x = newValue.x - size.width / 2
            orign.y = newValue.y - size.height / 2
        }
    }
    // 面積
    var area: Double {     // 不寫set即是唯讀
        return size.width * size.height     // but，只有個回傳，故連get都不需，直接return
    }
    
}

var rect = Rect(orign: Point(x: 16, y: 17), size: Size(width: 18, height: 19))  // 問這段Size的問題
print(rect)
print(rect.center)
rect.center = Point(x: 0, y: 0)
print(rect.orign)
print(rect.area)
// rect.area = 100  (因40行唯讀，故不可變動)

class ScoreRecord {
    
    var score: Int = 0 {
        // willSet及didSet無回傳值
        willSet(newValue) {
            print(newValue, "-> 即將覆蓋原始資料(\(score))")
        }
        didSet(oldValue) {
            if score > oldValue {
                print("進步了", score - oldValue, "分")
            } else if score == oldValue {
                print("沒有進步也沒有退步")
            } else {
                print("退步了", oldValue - score, "分")
            }
            
        }
    }
}
var scoreRecord = ScoreRecord()
scoreRecord.score = 60
scoreRecord.score = 80
scoreRecord.score = 80
scoreRecord.score = 30

print(scoreRecord.score)

