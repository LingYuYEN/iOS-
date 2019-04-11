//
//  main.swift
//  WhileLoop
//
//  Created by Louis on 2018/12/26.
//  Copyright © 2018 Louis. All rights reserved.
//

import Foundation

//while 布林 {
//    (判斷為true則持續執行)
//}

var i = 4
while i < 4 {
    print(Date())
    print(i)
    i += 1
}
print(i)

print("==========================")

i = 4
repeat {
    print(i)
    i += 1
    
} while i < 4
print(i)

print("==========================")

//while true {
//    // 無窮迴圈(loop)
//    print(i)
//    i += 1
//    if i == 4 {
//        break   // break僅跳出該括弧(此範例為if吃不到break，故會跳出while迴圈)
//    }
//
//}


print("==========================")
var score = 0
exanLoop: while true {  // (exanLoop)為這個while迴圈命名
    print("again")
    switch score {
    case 0 ... 19:
        print("你真的有讀書嗎？")
    case 20 ... 39:
        print("要加油哦！")
    case 40 ... 59:
        print("可惜，差一點！")
    default:
        print("恭喜，及格了！")
        break exanLoop  // 此break僅會跳出switch故透過命名來告訴xcode要跳出的是while
    }
    score += 14
}


