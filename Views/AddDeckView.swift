//
//  AddDeckView.swift
//  FlashForward
//
//  Created by David Cartwright on 2025-05-02.
//


import SwiftUI

struct AddDeckView: View {
    @Environment(\.dismiss) private var dismiss
    
    //new deck information
    @State private var deckName: String = ""
    @State private var deckDescription: String = ""
    @State private var selectedIcon: String = "book.fill"
    @State private var selectedColor: Color = .mint
    
    private let options = AddDeckOptions()
        
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Deck Details")) {
                    TextField("Deck Name", text: $deckName)
                    TextField("Description", text: $deckDescription)
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Icon")
                            .font(.headline)
                        
                        LazyVGrid(columns: [
                            GridItem(.flexible()),
                            GridItem(.flexible()),
                            GridItem(.flexible()),
                            GridItem(.flexible()),
                            GridItem(.flexible())
                        ], spacing: 15) {
                            ForEach(options.deckIconOptions, id: \.self) { icon in
                                ZStack {
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(selectedIcon == icon ? selectedColor.opacity(0.2) : Color(UIColor.secondarySystemBackground))
                                        .frame(width: 44, height: 44)
                                    
                                    Image(systemName: icon)
                                        .font(.title2)
                                        .foregroundColor(selectedIcon == icon ? selectedColor : .primary)
                                }
                                .onTapGesture {
                                    withAnimation(.easeInOut(duration: 0.2)) {
                                        selectedIcon = icon
                                    }
                                }
                            }
                        }
                    }
                    .padding(.vertical, 8)
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Color")
                            .font(.headline)
                        
                        LazyVGrid(columns: [
                            GridItem(.flexible()),
                            GridItem(.flexible()),
                            GridItem(.flexible()),
                            GridItem(.flexible()),
                            GridItem(.flexible())
                        ], spacing: 15) {
                            ForEach(options.deckColorOptions, id: \.name) { colorOption in
                                ZStack {
                                    Circle()
                                        .fill(colorOption.color)
                                        .frame(width: 30, height: 30)
                                    
                                    if selectedColor == colorOption.color {
                                        Circle()
                                            .stroke(Color.primary, lineWidth: 2)
                                            .frame(width: 30, height: 30)
                                    }
                                }
                                .onTapGesture {
                                    withAnimation(.easeInOut(duration: 0.2)) {
                                        selectedColor = colorOption.color
                                    }
                                }
                            }
                        }
                    }
                    .padding(.vertical, 8)
                }
                
                Section(header: Text("Preview")) {
                    HStack {
                        Image(systemName: selectedIcon)
                            .font(.title)
                            .foregroundColor(selectedColor)
                            .frame(width: 44, height: 44)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(selectedColor.opacity(0.2))
                            )
                        
                        VStack(alignment: .leading) {
                            Text(deckName.isEmpty ? "Deck Name" : deckName)
                                .font(.headline)
                            Text("New Deck")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                    }
                    .padding(.vertical, 8)
                }
                
                Section {
                    Button(action: {
                        // TODO: Add deck functionality
                        //have this add the deck and then move onto the next screen to create options re:
                        // tags
                        // user-defined difficulty
                        // custom order / sorting mode
                        // deck type (user-created, downloaded, shared, pre-made) - user created is the only one available for free
                        
                        //next screen will be timer stuff (settings screen?):
                        //free is default timer stuff only - 25 minutes promodoro style?
                        //number of cards per day daily goal locked
                        //which days of the week
                        //card review mode - in order, random,
                        //notifications on / off
                        
                        
                        //deck stats when decks are selected from the list
                        // number of cards in deck
                        // number of times reviewed
                        //mastery (based on timer stats)
                        //daily goals hit
                        //editing options
                        
                        dismiss()
                        
                    }) {
                        HStack {
                            Spacer()
                            Text("Add Deck")
                                .bold()
                            Spacer()
                        }
                    }
                    .disabled(deckName.isEmpty)
                }
            }
            .scrollContentBackground(.hidden)
            .background(.thinMaterial)
            .navigationTitle("New Deck")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    AddDeckView()
}

