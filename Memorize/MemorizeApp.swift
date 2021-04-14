//
//  MemorizeApp.swift
//  Memorize
//
//  Created by MAC on 12/4/2021.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemorizeGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
