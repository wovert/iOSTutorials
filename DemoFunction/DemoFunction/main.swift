//
//  main.swift
//  DemoFunction
//
//  Created by wovert on 18/12/16.
//  Copyright © 2018年 dev. All rights reserved.
//

import Foundation

func sayHello(name:String) {
    print("Hello \(name)")
}

sayHello("wovert")

func getNums()->(Int, Int) {
    return (2,3)
}

let (a,b) = getNums()
print("a=\(a),b=\(b)")

var fun = sayHello

print(fun("lisi"))

