//
//  HomeView.swift
//  FlashForward
//
//  Created by David Cartwright on 2025-05-02.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchFieldText: String = ""
    
    var body: some View {
        VStack {
            
            //search bar
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.gray)
                TextField("Search decks", text: $searchFieldText)
            }
            .padding()
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
            
            
            
            
            //top 4 things
            //my decks
            //browse decks
            //todays list
            //to complete
            
            //list of...decks?
        }
    }
}

#Preview {
    HomeView()
}
