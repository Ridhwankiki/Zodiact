//
//  TestingView.swift
//  Zodiact
//
//  Created by MacBook Pro on 02/05/24.
//

import SwiftUI

struct TestingView: View {
    var body: some View {
        NavigationStack {
            HStack {
                Text("asdasd")
            }
            .background(
                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .top, endPoint: .bottom)
            )
        }
    }
}

#Preview {
    TestingView()
}
