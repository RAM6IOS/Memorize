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
                
                cardsviw()
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
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10.0).fill()
           // RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
            Text("🇩🇿")
                .padding()
            
        }
       
    }
}
