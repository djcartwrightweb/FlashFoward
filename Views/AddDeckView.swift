//
//  AddDeckView.swift
//  FlashForward
//
//  Created by David Cartwright on 2025-05-02.
//

import SwiftUI

struct AddDeckView: View {
    
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            Color.clear.edgesIgnoringSafeArea(.all)
            
                Button {
                    withAnimation {
                        dismiss()
                    }
                } label: {
                    Image(systemName: "x.circle")
                        .font(.title)
                        .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
                }
                .padding()
            
            VStack {
                Text("Name")
                Text("Icon")
                Text("Color")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }

    }
}

#Preview {
    AddDeckView()
}

struct ExtractedView: View {
    var body: some View {
        Color.red.edgesIgnoringSafeArea(.all)
    }
}
