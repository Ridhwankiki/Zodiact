//
//  DummyView.swift
//  Zodiact
//
//  Created by MacBook Pro on 02/05/24.
//

import SwiftUI

struct DummyView: View {
    var body: some View {
        NavigationStack {
            ZStack {
            
                VStack {
                    Text("AAAAAAA")
                    Image(systemName: "person")
                        .frame(width: 600, height: 600)
                }
                
            }
            .navigationTitle("Zodi-Act")
            .background(
                LinearGradient(gradient: Gradient(colors: [Color.black, Color.blue]), startPoint: .top, endPoint: .bottom)
                )
        }
    }
}

#Preview {
    DummyView()
}
