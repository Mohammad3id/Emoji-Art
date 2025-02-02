//
//  EmojiArt.swift
//  Emoji Art
//
//  Created by Mohammad Eid on 01/02/2025.
//

import Foundation

struct EmojiArt {
    var backgroud: URL?
    private(set) var emojis = [Emoji]()
    
    private var uniqueEmojiId = 0
    mutating func addEmoji(_ emoji: String, at position: Emoji.Position, size: Int) {
        uniqueEmojiId += 1
        emojis.append(
            Emoji(
                id: uniqueEmojiId,
                string: emoji,
                size: size,
                position: position
            )
        )
    }
    
    struct Emoji: Identifiable {
        var id: Int
        let string: String
        var size: Int
        
        var position: Position
        struct Position {
            var x: Int
            var y: Int
            
            static let zero = Self(x: 0, y: 0)
        }
    }
}
