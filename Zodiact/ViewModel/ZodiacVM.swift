//
//  ZodiacVM.swift
//  Zodiact
//
//  Created by MacBook Pro on 02/05/24.
//

import Foundation
import GoogleGenerativeAI

@MainActor
class ZodiacVM: ObservableObject {
    @Published var zodiacText = ""
    @Published var displayedZodiacText = ""
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    private var timer: Timer?
    
    // MARK: - GENERATE Zodiac
    
    func generateZodiac(zodiac: Zodiac, topic: Topic) async {
        isLoading = true
        defer { isLoading = false }
        errorMessage = nil
        zodiacText = ""
        
        let apiKey = UserDefaults.standard.string(forKey: "GeminiAIKey") ?? ""
        
        guard !apiKey.isEmpty else {
            errorMessage = "API KEY is missing. Please set in Setting Page!"
            return
        }
        let model = GenerativeModel(name: "gemini-pro", apiKey: apiKey)
        let zodiacString = zodiac.rawValue.capitalized
        let topicString = topic.rawValue.capitalized
        
//        let prompt = "Berikan saya ramalan hari ini tentang \(topicString) dari zodiac \(zodiacString) beserta saran. Maksimal 50 kata"
        let prompt = "Berikan saya ramalan hari ini tentang \(topicString) dari zodiac \(zodiacString). Dengan maksimal 40 kata."
        
        do {
            let response = try await model.generateContent(prompt)
            if let text = response.text {
                zodiacText = text
                startTypewriterEffect()
            }
            print(prompt)
        } catch {
            errorMessage = "Failed to generate zodiac: \(error.localizedDescription)"
        }
    }
        
    func startTypewriterEffect() {
        
        var charIndex = 0
        
        DispatchQueue.main.async {
            self.displayedZodiacText = ""
        }
        
        timer?.invalidate()
        timer  = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true) { [weak self] timer in
            guard let self = self, charIndex < self.zodiacText.count else {
                timer.invalidate()
                return
            }
            DispatchQueue.main.async {
                let index = self.zodiacText.index(self.zodiacText.startIndex,offsetBy: charIndex)
                self.displayedZodiacText += String(self.zodiacText[index])
                charIndex += 1
            }
            
        }
    }
}
