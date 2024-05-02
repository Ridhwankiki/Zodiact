//
//  MainView.swift
//  Zodiact
//
//  Created by MacBook Pro on 02/05/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                Label("Home", systemImage: "house")
            }
            ZodiacView()
                .tabItem {
                Label("Zodiac", systemImage: "star.circle")
            }
            SettingView()
                .tabItem {
                Label("Setting", systemImage: "gear")
            }
        }
    }
}

#Preview {
    MainView()
}
