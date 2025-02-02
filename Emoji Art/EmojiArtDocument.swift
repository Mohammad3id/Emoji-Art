//
//  EmojiArtDocument.swift
//  Emoji Art
//
//  Created by Mohammad Eid on 01/02/2025.
//

import SwiftUI

@Observable
class EmojiArtDocument {
    typealias Emoji = EmojiArt.Emoji
    
    private var emojiArt = EmojiArt()
    
    var emojis: [Emoji] { emojiArt.emojis }
    var background: URL? { emojiArt.backgroud }
    
    // MARK: - Intent(s)
    func setBackground(_ url: URL?) {
        emojiArt.backgroud = url
    }
    
    func addEmoji(_ emoji: String, at position: Emoji.Position, size: CGFloat) {
        emojiArt.addEmoji(emoji, at: position, size: Int(size))
    }
}

extension EmojiArt.Emoji {
    var font: Font { .system(size: CGFloat(size)) }
}

extension EmojiArt.Emoji.Position {
    func `in`(_ geometry: GeometryProxy) -> CGPoint {
        let center = geometry.frame(in: .local).center
        return CGPoint(
            x: center.x + CGFloat(x),
            y: center.y - CGFloat(y)
        )
    }
}
