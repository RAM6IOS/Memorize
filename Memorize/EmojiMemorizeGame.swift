//
//  EmojiMemorizeGame.swift
//  Memorize
//
//  Created by MAC on 14/4/2021.
//
import SwiftUI



class EmojiMemorizeGame {
    private var model: MemoriGame<String> = EmojiMemorizeGame.createMemoryGame()
   static func createMemoryGame() -> MemoriGame<String>{
    let emojis = ["🇩🇿","🏴‍☠️","🇦🇱"]
    return MemoriGame<String>(numberOfPairsOfCards:emojis.count) {pairIndex in
        return emojis[pairIndex] }
    
        
    }
        
       
    var cards:Array<MemoriGame<String>.Card>{
        return model.cards
    }
    
    
    func choose (card:MemoriGame<String>.Card){
       
        model.choose(card: card)
    }
    
    
}
