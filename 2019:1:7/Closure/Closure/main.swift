//
//  main.swift
//  Closure
//
//  Created by Louis on 2019/1/7.
//  Copyright © 2019 Louis. All rights reserved.
//

import Foundation

func line() {
    print("=======================================================")
}
// Closure 閉包
// 沒有function name的function
// 像是變數/常數(參數)被傳遞使用

func add(_ number1: Int, _ number2: Int) -> Int {
    return number1 + number2
}

func sub(_ number1: Int, _ number2: Int) -> Int {
    return number1 - number2
}

let myFunction1 = add
let myFunction2 = sub
print(myFunction1(7, 13))
print(myFunction2(123, 63))

// 平方差
// a^2 - b^2 = (a+b)*(a-b)
func squareDifference(a:Int, b:Int, toAdd: (Int, Int) -> Int, toSub: (Int, Int) -> Int) {
    let result = toAdd(a,b) * toSub(a,b)
    print(result)
}
// 5^2 - 4^2 = 25-16 = 9 = (5+4)*(5-4)
squareDifference(a: 5, b: 4, toAdd: myFunction1, toSub: myFunction2)

enum Type {
    case 加, 減, 乘, 除
}
func chooseFunction(_ type: Type) -> (Int, Int) -> Int {
    func mul(_ number1: Int, _ number2: Int) -> Int {
        return number1 * number2
    }
    
    func div(_ number1: Int, _ number2: Int) -> Int {
        return number1 / number2
    }
    switch type {
    case .加:
        return myFunction1
    case .減:
        return myFunction2
    case .乘:
        return mul
    case .除:
        return div
    }
}
let myFunction3 = chooseFunction(.加)    // myFunction3 is add()
print(myFunction3(1, 19))
print(chooseFunction(.減)(13, 3))
print(chooseFunction(.乘)(13, 3))
print(chooseFunction(.除)(18, 6))

// 以Closure方式寫一個function
let myFunction4 = { (number1: Int, number2: Int) -> Int in
    return number1 + number2
}
print(myFunction4(8, 2))

func downloadFile1(finish: (Data?) -> (), link: String) {
    let file = link.data(using: .utf8)  // 假裝下載。 file是下載完的資料
    finish(file)
}
downloadFile1(finish: { fileFromInternet in
    print("下載完畢，把", fileFromInternet, "存起來")
}, link: "http://aaabbbcccdddeee.com")

func downloadFile2(link: String, finish: (Data?) -> Void) {
    let file = link.data(using: .utf8)  // 假裝下載。 file是下載完的資料
    finish(file)    // 下載完要做的事
}

downloadFile2(link: "http://test123.com") { (file) in
    print("下載完畢，把", file, "存起來")
}

func downloadFile3(link: String, finish: (Data?) -> Bool) {
    let file = link.data(using: .utf8)  // 假裝下載。 file是下載完的資料
    if finish(file) {
        print("檔案處理完成，可以繼續下載下一個檔案。")
    } else {
        print("檔案處理失敗，詢問使用者是否要重新下載該檔案？")
    }
}
downloadFile3(link: "http://kkk.com") { result -> Bool in
    if result != nil {
        return true
    } else {
        return false
    }
}

/// 三個縮寫方法
downloadFile3(link: "aaa") { result -> Bool in
    return result != nil    // result亦可省略
}

downloadFile3(link: "bbb") { result -> Bool in
    result != nil
}

downloadFile3(link: "ccc") { $0 != nil }    // result亦可省略

line()

/// 使用方式類似for迴圈,但搭配Closure
[1, 2, 3].forEach {
    print($0)
}

let anotherArray = [4, 5, 6].map { number -> Bool in
    return number % 2 == 0
}
print(anotherArray)

let sortedArray = [9, 1, 3].sorted()        // 排序
let reversedArray = sortedArray.reversed()  // 反轉
print(sortedArray)
print(reversedArray)

let filteredArray = ["123", "apple", "true", "3.14", "9"].filter { content -> Bool in
    return Int(content) != nil
}
print(filteredArray)
