//
//  HomeView.swift
//  Zodiact
//
//  Created by MacBook Pro on 02/05/24.
//

import SwiftUI

struct HomeView: View {
    
    
    @StateObject private var zodiacVM = ZodiacVM()
    
    @State private var selectedZodiac: Zodiac = .cancer
    @State private var selectedTopic: Topic = .keuangan

    var body: some View {
        NavigationStack {
            Form {
                
                // MARK: - Picker View

                Section {
                    
                    Picker(selection: $selectedZodiac) {
                        ForEach(Zodiac.allCases, id: \.self) { zodiac in
                            Text(zodiac.rawValue.capitalized)
                                .font(.subheadline)
                                .tag(zodiac)
                        }
                    } label: {
                        Text("Choose Zodiac")
                            .foregroundStyle(.gray)
                    }
                    
                    
                    Picker(selection: $selectedTopic) {
                        ForEach(Topic.allCases, id: \.self) { topic in
                            Text(topic.rawValue.capitalized)
                                .font(.subheadline)
                                .tag(topic)
                        }
                    } label: {
                        Text("Choose Topic")
                            .foregroundStyle(.gray)
                    }

                } header: {
                    Text("Zodiac")
                } footer: {
                    Text("Choose any zodiac and topic that you want to search")
                }
                
                // MARK: - TEXT EDITOR

                Section {
                    
                    TextEditor(text: $zodiacVM.displayedZodiacText)
                        .frame(height: 250)
                        .font(.system(.headline, design: .rounded))
                        .foregroundStyle(.blue)
                        .disabled(zodiacVM.isLoading)
                        .overlay {
                            zodiacVM.isLoading ? ProgressView() : nil
                        }
                    
                } header: {
                    Text("Todays Zodiac")
                } footer: {
                    Text("This zodiac are generated by Gemini AI.")
                }
                
                // MARK: - Generate Zodiac

                Button {
                    if zodiacVM.displayedZodiacText.isEmpty {
                        generateZodiac()
                    } else {
                        zodiacVM.displayedZodiacText = ""
                        generateZodiac()
                    }
                } label: {
                    Text(zodiacVM.displayedZodiacText.isEmpty ? "Generate" : "Generate Again")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                
                
            }
            .navigationTitle("Zodi-Act")
            .tint(.black)
        }
    }
}

#Preview {
    HomeView()
}

extension HomeView {

    func generateZodiac() {
        Task {
            await zodiacVM.generateZodiac(zodiac: selectedZodiac, topic: selectedTopic)
        }
    }
    
    private func todaysZodiac() {
        if zodiacVM.displayedZodiacText.isEmpty {
            generateZodiac()
        }
    }
}