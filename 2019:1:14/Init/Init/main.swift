//
//  main.swift
//  Init
//
//  Created by Louis on 2019/1/14.
//  Copyright © 2019 Louis. All rights reserved.
//

import Foundation

struct BaseStruct {
    var name: String?
    
    // initializer initialize 建構子
    init() {
        self.name = "BaseStruct的預設名稱"
    }
    
    init(name: String) {
        self.name = name
    }
}

let baseStruct1 = BaseStruct(name: "Jack")
print(baseStruct1.name)
let baseStruct2 = BaseStruct()
print(baseStruct2.name)

struct BaseClass {
    var name: String?
    
    // initializer initialize 建構子
    init() {
        self.name = "BaseStruct的預設名稱"
    }
    
    init(name: String) {
        self.name = name
    }
}

let baseClass1 = BaseClass(name: "大明")
print(baseClass1.name)
let baseClass2 = BaseClass()
print(baseClass2.name)

enum Major {
    case chinese, art, music, science
}

class Student {
    var name: String
    var major: Major
    init() {
        self.name = "預設名字"
        self.major = .chinese
    }
    
    init(name: String) {
        self.name = name
        self.major = .chinese
    }
    
    init(name: String, major: Major) {
        self.name = name
        self.major = major
    }
    
    
    func showInfo() {
        print(self.name, self.major)
    }
    
}
let student1 = Student()
student1.showInfo()
let student2 = Student(name: "小強")
student2.showInfo()
let student3 = Student(name: "小鷹", major: .science)
student3.showInfo()

// 建構 VS 解構
class Classmate {
    var name: String?
    /// 記錄教室內人數
    static var count = 0    // 靜態，可以將classmate1與classmate2連線
    
    //建構子
    init(name: String) {
        self.name = name
        Classmate.count += 1
        print("\(name)進入教室")
    }
    
    // 解構子
    deinit {
        Classmate.count -= 1
        print("\(name)離開教室")
    }
}

var classmate1: Classmate? = Classmate(name: "陳阿玉")
var classmate2: Classmate? = Classmate(name: "孫大華")

print(Classmate.count)
classmate1 = nil
print(Classmate.count)
classmate2 = nil
print(Classmate.count)

// lazy 懶惰(懶加載)
// 程式執行到該行時，不會直接建構該物件，等到使用該物件時才進行建構。
// 提升程式執行效率 or 一開始還不確定內容，延遲指派內容的時間

struct TestStruct {
    struct Count {
        var number = 7
        init() {
            print("建構CountStruct")
        }
    }
    lazy var count = Count()
    
    init() {
        print(#line)    // 執行第該行
        print(self.count.number)
    }
  
}
var testStruct = TestStruct()

