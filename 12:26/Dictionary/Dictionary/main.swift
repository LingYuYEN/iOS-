//
//  main.swift
//  Dictionary
//
//  Created by Louis on 2018/12/26.
//  Copyright © 2018 Louis. All rights reserved.
//

import Foundation

// Dictionary 字典(key對應value)
// var dictionary = [編號:內容, 編號:內容, 編號:內容]
var dictionary1 = [9527:"唐伯虎", 9528:"秋香", 9529:"武狀元"]   // key重複的情況將造成閃退
var dictionary2 = ["火影忍者":"岸本齊史", "蠟筆小新": "九井儀人", "進擊的巨人":"揀山創"]

var dictionary3 = [Int: String]()
var dictionary4 = Dictionary<String, String>()

var dictionary5: [Int:String] = [:]
var dictionary6: Dictionary<Int, String> = [:]  // 此宣告留意<>內非:

print(dictionary1)
print(dictionary2)
print(dictionary3)
print(dictionary4)
print(dictionary5)
print(dictionary6)

// 取出值
// dictionary[key] --- 將取得value
// print(dictionary1[9526])    // 取得nil
// print(dictionary1[9527])    // 取得optional value


print(dictionary1[9527] == nil ? "無資料" : dictionary1[9527]!)    // 三元運算子
print(dictionary1[9528] ?? "無資料")   // 判斷??前面的內容是否為nil，不是就直接加!取值，是就使用後面的預設內容
print(dictionary1[9529, default: "無資料"])    // 新寫法，同38行

// 新增:dictionary[key] = value
dictionary4["台北"] = "柯文哲"
dictionary4["新北"] = "侯有宜"
dictionary4["台中"] = "林佳龍"
print(dictionary4)
dictionary4["台中"] = "盧秀燕"   // 更改內容
dictionary4.updateValue("盧秀燕", forKey: "台中")    // 同44更改內容
print(dictionary4)
dictionary4.removeValue(forKey: "台北")   // 移除方法一
print(dictionary4)
dictionary4["新北"] = nil                 // 移除方法二
print(dictionary4)
dictionary4.removeAll()                  // 移除全部
print(dictionary4)

print(dictionary4["新北"] ?? "無資料")


print("=======================")
// tuple內含(array, dictionary)-------索引0代表array，1代表dictionary
var smaple = ([1, 2, 3], ["a": true, "b": false])
smaple.0.append(9)      // array的新增方式(.append)
smaple.0.append(6)
print(smaple)
smaple.1["c"] = Bool.random()   // dictionary的新增方式
smaple.1["d"] = Bool.random()
print(smaple)

print("=======================")
for key in dictionary1.keys {
    print(key)
}

for value in dictionary1.values {
    print(value)
}

for man in dictionary1 {
    print(man)
}
for man in dictionary1 {
    print(man.key, man.value)
}

print("=====================================================================")

let books = Array(dictionary2)
print(books)
print(books.count)

print(books[0])
print(books[1])
print(books[2])

print("=====================================================================")
if let author = dictionary2["火影忍"] {
    print(author)
} else {
    print("查無資料")
}

print("=====================================================================")
var friends = ["Johnny": [1986, 11, 10], "Rita": [1996, 10, 17]]
if let guy = friends["Rita"] {
    print("\(guy[0])年")
    print("\(guy[1])月")
    print("\(guy[2])日")
}


for someone in friends {
    print("---\(someone.key)---")
    for profile in someone.value {
        print(profile)
    }
}

// objective-C
// Swift
// 將兩個array轉為dictionary
let name = ["楊過", "郭靖", "令狐沖"]     // keys
let skills = ["黯然消魂掌", "降龍十八掌", "獨孤九劍"]   // values

// let roles = zip(<#T##sequence1: Sequence##Sequence#>, <#T##sequence2: Sequence##Sequence#>)
let roles = zip(name, skills)
let finalDictionary = Dictionary(uniqueKeysWithValues: roles)
print(finalDictionary)
