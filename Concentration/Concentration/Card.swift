//
//  Card.swift
//  Concentration
//
//  Created by wovert on 2019/1/6.
//  Copyright © 2019 dev. All rights reserved.
//

import Foundation

struct Card {
    var isFaceUp = false    // 是否翻牌
    var isMatched = false   // 是否匹配
    var identifier: Int     // 唯一标识
    
    static var identifierFactory = 0
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
