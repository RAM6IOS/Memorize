//
//  ContentView.swift
//  Memorize
//
//  Created by MAC on 12/4/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4){indx in
                
                cardsviw(isFaceup: false)
            }
            
           
        }
        .padding()
        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        .font(Font.largeTitle)
        
        
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

struct cardsviw: View {
    var isFaceup:Bool
    var body: some View {
        ZStack{
            if isFaceup{
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("🇩🇿")
                    .padding()
            }else{
                RoundedRectangle(cornerRadius: 10.0).fill()
                
            }
           
            
        }
       
    }
}
