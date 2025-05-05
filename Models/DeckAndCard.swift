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
    var name: String
    var cards: [Card]
    
    init(name: String, cards: [Card]) {
        self.name = name
        self.cards = cards
    }
}
