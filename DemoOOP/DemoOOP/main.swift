//
//  main.swift
//  DemoOOP
//
//  Created by wovert on 18/12/16.
//  Copyright © 2018年 dev. All rights reserved.
//

import Foundation


class Hi {
    func sayHi() {
        print("Hi wovert.com")
    }
}

// 继承类
class Hello:Hi {
    var _name: String
    
    // 构造方法
    init(name: String) {
        self._name = name
    }

    // 重写方法
    override func sayHi() {
        print("Hello \(self._name)")
    }
}

var hi = Hi()
hi.sayHi()


var h = Hello(name: "沃尔特")
h.sayHi()