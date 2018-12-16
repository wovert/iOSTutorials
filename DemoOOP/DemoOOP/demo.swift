//
//  demo.swift
//  DemoOOP
//
//  Created by wovert on 18/12/16.
//  Copyright © 2018年 dev. All rights reserved.
//

import Foundation


//
//class Hi {
//    func sayHi() {
//        print("Hi wovert.com")
//    }
//}
//extension Hi {
//    func sayHaha() {
//        print("haha")
//    }
//}
//
//// 继承类
//class Hello:Hi {
//
//    // 成员属性
//    var _name: String
//
//    // 构造方法
//    init(name: String) {
//        self._name = name
//    }
//
//    // 重写方法
//    override func sayHi() {
//        print("Hello \(self._name)")
//    }
//
//    class func sayStaticHello() {
//        print("Hello static function.")
//    }
//}
//
//// 定义接口
//protocol People {
//    func getName()->String
//}
//
//// 实现接口
//class Man:People {
//    func getName() -> String {
//        return "wovert"
//    }
//}
//
//// 命名空间
//class Com {
//    class Wovert{
//        func inner() {
//            print("inner")
//        }
//    }
//}
//
//extension Com {
//    func getName() {
//        print("This is extension Com class of function")
//    }
//}
//
//extension Com.Wovert {
//    func hello() {
//        print("hello wovert.......")
//    }
//}
//
//var com = Com()
//com.getName()
//
//var ns = Com.Wovert()
//ns.inner()
//ns.hello()
//
//var m = Man()
//print(m.getName())
//
//var hi = Hi()
//hi.sayHi()
//hi.sayHaha()
//
//Hello.sayStaticHello()
//
//
//var h = Hello(name: "沃尔特")
//h.sayHi()
