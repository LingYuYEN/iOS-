//
//  main.swift
//  Array
//
//  Created by Louis on 2018/12/26.
//  Copyright © 2018 Louis. All rights reserved.
//

import Foundation

// Array 陣列
let array1 = [1, 7, 87, -5, 33, 999, 0]

let array2: [Int] = []
let array3: Array<Int> = []

let array4 = [Int]() // 建構，意義同 let a = [Int]() 硬是把取得的值轉為Int
let array5 = Array<Int>()
print(array1)
print(array2)
print(array3)
print(array4)
print(array5)

var applesArray = ["iPhone", "iPad"]
print(applesArray[0], applesArray[1]) // 0/1為索引(index)
applesArray.append("iPod")  // 增加資料，方法一
print(applesArray)
applesArray += ["appleWatch", "MacBookAir"]   //增加資料，方法二（注意中括弧）
print(applesArray)

let newArray = ["MBPR", "AppleTV"]
applesArray += newArray //陣列與陣列相加
print(applesArray)

for index in 0 ..< applesArray.count {
    print(applesArray[index])
}


print("==================")

print("apple官方建議寫法")
for product in applesArray {    // 直接於in後填入Array(xcode會計算array數量)
    print(product)
}

print("==================")
for product in applesArray.enumerated() {   //列舉，將Array轉由Tuple方式存入product
    print(product.offset, product.element)
}

print("==================")
applesArray.insert("Magic Mouse", at: 2)    //插入一個陣列
for (index, product) in applesArray.enumerated() {   //列舉，Array存入Tuple方式
    print(index, product)
}

// 替換Array內容
applesArray[3] = "Apple Pencil"
print(applesArray)

applesArray [4 ... 6] = ["iMac", "nano", "Macbook"]
print(applesArray)

// 刪除Array內容
// applesArray.remove(at: <#T##Int#>)---刪除指定位置
let removement = applesArray.remove(at: 0)
print("刪除了\(removement)")
print(applesArray)

// applesArray.removeFirst()---刪除第一(0)個
// applesArray.removeFirst(<#T##k: Int##Int#>)---從第一個刪除K個數量

// applesArray.removeLast()---刪除最後一個
// applesArray.removeLast(<#T##k: Int##Int#>)---從最後一個刪除K個數量

// applesArray.removeAll()---刪除全部(與認列初始化結果相同，但意義不同)
applesArray.removeAll()

applesArray = Array(repeating: "iPhone Xs max", count: 10)
for (index, product) in applesArray.enumerated(){
    print(index, product)
}





