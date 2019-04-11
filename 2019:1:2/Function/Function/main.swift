//
//  main.swift
//  Function
//
//  Created by Louis on 2019/1/2.
//  Copyright © 2019 Louis. All rights reserved.
//

import Foundation

/// 建立一家工廠
func printName(name: String) {
    print("我的名字叫\(name)")
}

// 呼喚工廠, 請它開始做事
printName(name: "Bob")
printName(name: "Louis")
printName(name: "Jordan")


func line() {
    print("==============================")
}
line()

/// 三角形專賣店
func printTriangle(line: Int) {
    for star in 1 ... line {
        for _ in 1 ... star {
            print("*", terminator: "")
        }
        print()
    }
}

printTriangle(line: 5)
printTriangle(line: 10)



line()
/// 四邊形專賣店(套用兩個參數)
func printRect(length: Int, width: Int) {
    for _ in 1 ... length {
        for _ in 1 ... width {
            print("*", terminator: "")
        }
        print()
    }
}

printRect(length: 3, width: 5)
printRect(length: 5, width: 12)

line()
/// 呼叫function (method/方法/函數/函式)

func add(_ number1: Int, _ number2: Int) -> Int {
    let answer = number1 + number2
    return answer
}
let result1 = add(3, 7)
print(result1)

let result2 = add(37, 13)
print(result2)

line()

/// 解析數字(二位數, 限定！)
func parseNumber(by number: Int) -> (tens: Int, ones: Int)? {
    if number > 99 || number < 10 {     //非二位數字
        return nil
    }
    let t = number / 10
    let o = number % 10
    return (t, o)
}

if let result = parseNumber(by: 87) {
    print(result.tens, result.ones)
}

if let result = parseNumber(by: 99) {
    print(result.tens, result.ones)
} else {
    print("無結果")
}

line()
/// 假裝， 從網路上取得資訊
func getInfoFromeInternet(link: String, timeont: Int = 15) {
    print("搜尋\(link)的資料，若在\(timeont)秒無回應，則放棄該次查詢。")
}

getInfoFromeInternet(link: "http://www.yourSpace.com", timeont: 10)
getInfoFromeInternet(link: "http://www.mySpace.com")

line()

// 可變量參數
func sum(_ numbers: Int ...) {
    var result = 0
    for number in numbers {
        result += number
    }
    print(result)
    
}

sum(3, 7)
sum(100, 500, 400)

line()
var a = 9, b = 5
/// 兩數互換
func swapNumber(number1: inout Int, number2: inout Int){
    let temp = number1
    number1 = number2
    number2 = temp
}
swapNumber(number1: &a, number2: &b)
print(a, b)

swap(&a, &b)
print(a, b)

(a, b) = (b, a)
print(a, b)





