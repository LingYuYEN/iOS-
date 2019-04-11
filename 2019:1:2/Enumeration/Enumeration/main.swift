//
//  main.swift
//  Enumeration
//
//  Created by Louis on 2019/1/2.
//  Copyright © 2019 Louis. All rights reserved.
//

import Foundation

/// 開發語言
enum Language {
    /// 安卓
    case java
    /// iOS
    case swift
    /// iOS(但是它很難學)
    case objc
    /// window phone
    case vb
    /// 其他
    case other
}

let tool = Language.swift

// switch不需寫defaule有條件有二，1.bool 2.enum且所有條件均需列出
switch tool {
case .java:
    print("安卓")
case .swift:
    print("iOS")
case .objc:
    print("iOS(但是它很難學)")
case .vb:
    print("window phone")
case .other:
    print("其他")
}

enum Role {
    case name(String)
    case status(hp: Float, mp: Float)
}

// associated type(value)
// let profile = Role.name("逍遙")
let profile = Role.status(hp: 199, mp: 40)
switch profile {
case .name(let name):
    print(name)
case .status(let hp, let mp):
    print(hp, mp)
}

print(Language.java.hashValue)
print(Language.swift.hashValue)
print(Language.objc.hashValue)
print(Language.vb.hashValue)
print(Language.other.hashValue)

enum Classmate: Int {
    case eva = 3, fred , mark = 6, tony, cathy = 8, dianna = 99      // 若不給值, 則由0起遞增, 或由上筆資料遞增
    func printName() {
        print("我是\(self)")  // self即為該enum下的case
    }
}

print(Classmate.eva.rawValue)
print(Classmate.fred.rawValue)
print(Classmate.mark.rawValue)
print(Classmate.tony.rawValue)
print(Classmate.cathy.rawValue)
print(Classmate.dianna.rawValue)

// let someone = Classmate(rawValue: 7)

if let someone = Classmate(rawValue: 7) {
    print(someone)
} else {
    print("輸入有誤")
}

// 呼叫enum內的func
Classmate.cathy.printName()

// swift 4.2後功能
// 協定 protocol
enum Direction: CaseIterable {
    case up, down, left, right
}
print(Direction.allCases)



