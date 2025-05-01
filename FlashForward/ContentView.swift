//
//  ContentView.swift
//  FlashForward
//
//  Created by David Cartwright on 2025-05-01.
//

import SwiftUI

struct Card: Identifiable {
    let id: UUID = UUID()
    let question: String
    let answer: String
}

struct Deck: Identifiable {
    let id: UUID
    let name: String
    let cards: [Card]
}

@MainActor
@Observable final class ContentViewModel {
    var decks: [Deck] = []
}


struct ContentView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State var viewModel = ContentViewModel()
    
    var body: some View {
        
        VStack {
            if viewModel.decks.isEmpty {
                
                VStack {
                    Image(systemName: "lightbulb.slash.fill")
                        .symbolRenderingMode(.palette)
                        
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                        .padding()
                        .foregroundStyle(.gray, .yellow)
                    Text("No decks yet? Lets change that!")
                        .font(.headline)
                    Text("Start by creating your first flashcard deck. Pick a symbol, choose a color, and begin learning your way.")
                        .font(.caption)
                    
                    Button {
                        
                    } label: {
                        HStack {
                            Text("Create a Deck")
                            Image(systemName: "forward")
                        }
                        .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
                    }
                    .padding()

                }
                .padding()
                
                Spacer()
            }
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
