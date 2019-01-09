//
//  ViewController.swift
//  Concentration
//
//  Created by wovert on 2019/1/4.
//  Copyright © 2019 dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 实例变量必须有初始值；1: 构造器初始化；2: 赋值

    // 创建初始化构造器为空的模型对象，懒加载，不能使用didSet
    lazy var game = Concentration(numberOfPairsOfCards: (cardButtons.count+1) / 2)
    
    // 0 int常量，所以可以省略类型；但函数参数必须指明类型
    // var flipCount: Int = 0 // 指定数据类型
    var flipCount = 0 {
        // 属性观察器：变量值改变之后，执行此处代码
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    //@IBOutlet var cardButtons: Array<UIButton>!
    @IBOutlet var cardButtons: [UIButton]!
    
    
    // @IBAction 显示行号显示圆圈图标
    // swift实参有标签
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        // 声明常量使用 let，数组里的索引没有更改过，所以这个就是常量
        // 可选类型有值并且赋予关联值
//        let cardNumber = cardButtons.index(of: sender)!
        
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            game.chooseCard(at: cardNumber)
            updateViewFromModel()       // 更新视图
        } else {
            print("chosen card was not in cardButtons")
        }

    }
    
    func updateViewFromModel() {
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: UIControl.State.normal)
                button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            } else {
                button.setTitle("", for: UIControl.State.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0.06480094178) : #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
            }
        }
    }
    
    var emojiChoices = ["⚽️","🏀","👻","👹","👾","🐼","🐶","🐙"]
    
//    var emoji = Dictionary<Int, String>()
    var emoji = [Int: String]()
    
    func emoji(for card: Card) -> String {
        if emoji[card.identifier] == nil, emojiChoices.count > 0 {
            let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
            emoji[card.identifier] = emojiChoices.remove(at: randomIndex)
            
        }
        
//        if emoji[card.identifier] != nil {
//            return emoji[card.identifier]
//        } else {
//          return "?"
//        }
        return emoji[card.identifier] ?? "😧"
    }
    
//    @IBAction func touchSecondCard(_ sender: UIButton) {
//        flipCount += 1
////        flipCountLabel.text = "Flips: \(flipCount)"
//        flipCard(withEmoji: "⚽️", on: sender)
//    }
    // 实参标签名withEmoji
    // 形参名称 emoji
    // 类型 String
    func flipCard(withEmoji emoji:String, on button:UIButton) {
        
        print("fileCard(withEmoji: \(emoji))")
        
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }

}

