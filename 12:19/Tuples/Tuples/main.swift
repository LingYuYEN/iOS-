//
//  main.swift
//  Tuples
//
//  Created by Louis on 2018/12/19.
//  Copyright © 2018 Louis. All rights reserved.
//

import Foundation

// Tuples 元組

let product1 = ("iPad", 16999)
print(product1)
print(product1.0, product1.1)

var product2 = (device: "iPhone", price: 49999) //給參數命名
print(product2.device, product2.price)
print(product2.0, product2.1)   //參數給0或1仍可取出值

let (device, price) = product1
print(device, price)

product2.price = 21000
print(product2)

var a = 3, b = 5
(a, b) = (b, a)
print(a, b)
