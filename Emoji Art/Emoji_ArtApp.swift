//
//  Emoji_ArtApp.swift
//  Emoji Art
//
//  Created by Mohammad Eid on 01/02/2025.
//

import SwiftUI

@main
struct Emoji_ArtApp: App {
    @State var defaultDocument = EmojiArtDocument()
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: defaultDocument)
        }
    }
}
