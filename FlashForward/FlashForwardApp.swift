//
//  FlashForwardApp.swift
//  FlashForward
//
//  Created by David Cartwright on 2025-05-01.
//

import SwiftUI

@main
struct FlashForwardApp: App {
    var body: some Scene {
        WindowGroup {
            DecksView()
                .modelContainer(for: Deck.self)
        }
    }
    
    init() {
        print(URL.applicationSupportDirectory.path(percentEncoded: false))
    }
}
