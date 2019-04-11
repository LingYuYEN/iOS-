//
//  main.swift
//  Extension1
//
//  Created by Louis on 2019/1/16.
//  Copyright © 2019 Louis. All rights reserved.
//

import Foundation

// Extension 延伸 拓展
let number = "1"
let value = Int(number)
print(value)

extension String {
    
    var intValue: Int? {
        return Int(self)
    }
    
}

print("9527".intValue)

extension Int {
    func loop(doRepeat: (Int) -> Void) {
        for index in 0 ..< self {
            doRepeat(index)
        }
    }
}

15.loop { (index) in
    print(index)
}
