//
//  ContentView.swift
//  Memorize
//
//  Created by MAC on 12/4/2021.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemorizeGame
    
    var body: some View {
        HStack {
            ForEach(viewModel.cards){card in
                
                cardsviw(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
                }
            }
            
           
        }
        .padding()
        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        .font(Font.largeTitle)
        
        
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemorizeGame())
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            
    }
}

struct cardsviw: View {
    var card :MemoriGame<String>.Card
    var body: some View {
        ZStack{
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.iscontent)
                    .padding()
            }else{
                RoundedRectangle(cornerRadius: 10.0).fill()
                
            }
           
            
        }
       
    }
}
