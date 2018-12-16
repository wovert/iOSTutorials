//
//  main.swift
//  DemoFlowControlStatement
//
//  Created by wovert on 18/12/16.
//  Copyright © 2018年 dev. All rights reserved.
//

import Foundation



// 可选变量
var myName:String? = "wovert"

// myName 如果为空则不执行
if let name=myName {
    print("hello \(name)")
}

myName = nil

// myName 如果为空则不执行
if let name=myName {
    print("hello \(name)")
}

var arr = [String]()

for index in 0...100 {
    if index%2 == 0 {
        arr.append("item \(index)")
    }

}

print(arr)

///////////////////////////////

for value in arr {
    print(value)
}

///////////////////////////////

var i = 0

while i<arr.count {
    print(arr[i])
    i++
}

///////////////////////////////

var dict = ["name": "wovert", "age": 10]
for (key,value) in dict {
    print("\(key)=\(value)")
}
