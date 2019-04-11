//
//  main.swift
//  Switch
//
//  Created by Louis on 2018/12/24.
//  Copyright © 2018 Louis. All rights reserved.
//

import Foundation

let id = 9529
switch id {
case 9526:
    print("月薪22K")
case 9527:
    print("月薪88K")
case 9528:
    print("論件計酬")
default:
    print("創業")
}

let word =  "pig"
var chinese: String?

switch word {
case "pig":
    chinese = "豬"
case "cat":
    chinese = "貓"
default:
    break
}

if chinese == nil {
    print("無法識別")
}else{
    print("\(word)的中文意思是\(chinese!)")
}

var time = 19
var info = "我今天\(time)點起床"

switch time {
case 5 ... 10:
    info += "，吃了早餐"
    fallthrough
case 11 ... 14:
    info += "，吃了午餐"
    fallthrough
case 15 ... 21:
    info += "，吃了晚餐"
default:
    info += "，什麼都沒吃"
}
print(info)

// 使用tuple比對
var device = ("iPad", 23000)
switch device {
case ("iPad", 23000):
    print("平板電腦")
case ("iPhone", 9000 ... 24000):
    print("手機")
case ("iPhone", 4000 ..< 9000):
    print("二手手機")
default:
    break
}
