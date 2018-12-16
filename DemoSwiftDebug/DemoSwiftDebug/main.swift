//
//  main.swift
//  DemoSwiftDebug
//
//  Created by wovert on 18/12/16.
//  Copyright © 2018年 dev. All rights reserved.
//

import Foundation

class Math {

    class func max(a:Int, b:Int)->Int{
        
        // 通过输出信息定位错误
        print("run Math.max:")
        
        // 输出详细信息：时间
        NSLog("Run Math.max")
        
        if a > b {
            return a
        } else {
            return b
        }
    }
    
}

let maxNum = Math.max(2, b:5)

print("Hello, World\(maxNum)")

