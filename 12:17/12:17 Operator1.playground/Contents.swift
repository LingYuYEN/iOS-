import Foundation
//import:函式，資料庫，框架

//變數，variable
//常數，constant
var str = "Hello, playground"

let pi = 3.1415926
var book = 9

//整數(interger) 小數(Double 64位元,Float 32位元) 布林(Bool) 字串(String)
let a = 20
let b = 5
let c:Float = 3.5
let d:Float = 5.5

a + b
a - b
a * b
a / b
a % b //餘除

Float(a) + c //強制將a改為Float
a + Int(c)
Float(a).truncatingRemainder(dividingBy: c)
//25 使用Float餘除會產生錯誤，故使用truncatingRemainder解決

/*
 多
 行
 註
 解
*/
