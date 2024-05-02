//
//  ZodiacView.swift
//  Zodiact
//
//  Created by MacBook Pro on 02/05/24.
//

import SwiftUI

struct ZodiacView: View {
    
    @State private var searchText: String = ""
    @State private var isRedacted: Bool = true
    @State private var horoscopes: [Horoscope] = HoroscopeProvider.allHoroscope()
    
    var horoscopeSearchResult: [Horoscope] {
        guard !searchText.isEmpty else {
            return horoscopes
        }
        return horoscopes.filter { $0.name.lowercased().contains(searchText.lowercased())
        }
    }
    
    var body: some View {
        NavigationStack {
            List(horoscopeSearchResult) { horoscope in
                NavigationLink {
                    HoroscopeDetail(horoscope: horoscope)
                } label : {
                    if isRedacted {
                        HoroscopeRow(horoscope: horoscope)
                            .redacted(reason: .placeholder)
                    } else {
                        HoroscopeRow(horoscope: horoscope)
                    }
                }
            }
            .navigationTitle("Zodiac")
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isRedacted = false
                }
            }
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "What Zodiac you are looking for?"
            )
            .overlay {
                if horoscopeSearchResult.isEmpty {
                    ContentUnavailableView.search(text: searchText)
                }
            }
        }
    }
}

#Preview {
    ZodiacView()
}

    
    
            
