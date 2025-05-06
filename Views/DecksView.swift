//
//  ContentView.swift
//  FlashForward
//
//  Created by David Cartwright on 2025-05-01.
//

import SwiftUI
import SwiftData

@Observable final class DecksViewModel {
    var decks: [Deck] = []
}


struct DecksView: View {
    
    @State private var viewModel = DecksViewModel()
    @State private var showAddDeckView: Bool = false
    
    var body: some View {
        NavigationStack { //adding navigation stack left off here
            
            VStack {
                if viewModel.decks.isEmpty {
                    emptyView
                        .offset(y: -50)
                } else {
                    
                    Text("Hello")
                    .navigationTitle(Text("Decks"))
                }
                
                
            }
            .padding()
        }
        .fullScreenCover(isPresented: $showAddDeckView) {
            AddDeckView()
        }
    }
    
    private var emptyView: some View {
        VStack {
            Image(systemName: "lightbulb.slash.fill")
                .symbolRenderingMode(.palette)
            
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
                .padding()
                .foregroundStyle(.gray, .yellow)
                .opacity(0.4)
            Text("No decks yet? Lets change that!")
                .font(.title3)
                .fontWeight(.semibold)
                .padding(.bottom, 5)
            Text("Start by creating your first flashcard deck. Pick a symbol, choose a color, and begin learning on your time.")
                .font(.caption)
                .foregroundStyle(Color(.systemGray))
//                .opacity(0.6)
            
            Button {
                showAddDeckView = true
            } label: {
                HStack {
                    Text("Create a Deck")
                    Image(systemName: "forward")
                }
                .bold()
                .foregroundStyle(Color.primary)
                .padding()
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .padding()
            
        }
        .padding()
        
    }
    
}

#Preview {
    DecksView()
}
