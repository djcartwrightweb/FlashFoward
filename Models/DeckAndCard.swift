//
//  DeckAndCard.swift
//  FlashForward
//
//  Created by David Cartwright on 2025-05-05.
//

import Foundation
import SwiftData

@Model
class Card: Identifiable {
    var question: String
    var answer: String
    
    init(question: String, answer: String) {
        self.question = question
        self.answer = answer
    }
}

@Model
class Deck {
    @Attribute(.unique) var name: String
    var icon: String
    var color: String
    var cards: [Card]
    
    init(name: String, icon: String, color: String, cards: [Card]) {
        self.name = name
        self.icon = icon
        self.color = color
        self.cards = cards
    }
}
