//
//  SettingsView.swift
//  VoicesAI
//
//  Created by MacBook Pro on 24/04/24.
//

import SwiftUI

struct SettingView: View {
    
    @State private var geminiAIKey = ""
    
    let signUpGemini = "https://ai.google.dev"
    
    var body: some View {
        NavigationStack {
            Form {
                
                // MARK: - API KEYS

                Section {
                    
                    TextField("Gemini AI Key", text: $geminiAIKey)
                        .onAppear {
                            geminiAIKey = UserDefaults.standard.string(forKey: "GeminiAIKey") ?? ""
                        }
                    
                    
                } header: {
                    Text("API KEYS")
                } footer: {
                    Text("Please put your API Key abpve.")
                }
                
                // MARK: - LINK
                
                Section {
                    
                    Link("GET API KEY GIMINI AI", destination: URL(string: signUpGemini)!)
                        .foregroundStyle(.blue)
                    
                    
                } header: {
                    Text("DONT HAVE API KEY?")
                } footer: {
                    Text("Sign up to get your own api key via link above")
                }
            }
            .navigationTitle("Configuration")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                
                // MARK: - SAVE KEY

                Button {
                    saveKey()
                } label: {
                    Text("Save")
                        .tint(.primary)
                }
                .padding(.trailing, 0)
                .disabled(geminiAIKey.isEmpty || geminiAIKey.isEmpty)
            }
        }
        
    }
}

#Preview {
    SettingView()
}

extension SettingView {
    func saveKey() {
        UserDefaults.standard.set(geminiAIKey, forKey: "GeminiAIKey")
    }
}
