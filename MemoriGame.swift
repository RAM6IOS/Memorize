//
//  MemoriGame.swift
//  Memorize
//
//  Created by MAC on 13/4/2021.
//

import Foundation

struct MemoriGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card){
        print("card chosm\(card)")
    }
    init (numberOfPairsOfCards:Int , cardContentFactory:(Int)->CardContent){
        cards=Array<Card>()
        for pairIndex in 0 ..< numberOfPairsOfCards{
            let content = cardContentFactory(pairIndex)
            cards.append(Card( iscontent: content , id: pairIndex*2))
            cards.append(Card( iscontent: content , id: pairIndex*2+1))
        }
    }
    
    struct Card :Identifiable {
        var isFaceUp: Bool = true
        var isMatched:Bool = false
        var iscontent:CardContent
        var id :Int
    }
}
