//
//  AddDeckOptions.swift
//  FlashForward
//
//  Created by David Cartwright on 2025-05-06.
//

import SwiftUI

struct AddDeckOptions {
    let deckColorOptions: [(name: String, color: Color)] = [
        ("Mint", .mint),
        ("Pink", .pink.opacity(0.7)),
        ("Blue", .blue.opacity(0.7)),
        ("Purple", .purple.opacity(0.7)),
        ("Orange", .orange.opacity(0.7)),
        ("Green", .green.opacity(0.7)),
        ("Yellow", .yellow.opacity(0.7)),
        ("Teal", .teal.opacity(0.7)),
        ("Indigo", .indigo.opacity(0.7)),
        ("Red", .red.opacity(0.7))
    ]
    
    let deckIconOptions = [
        "book.fill",
        "graduationcap.fill",
        "lightbulb.fill",
        "star.fill",
        "heart.fill",
        "brain.head.profile",
        "pencil",
        "doc.fill",
        "folder.fill",
        "tag.fill"
    ]
}
