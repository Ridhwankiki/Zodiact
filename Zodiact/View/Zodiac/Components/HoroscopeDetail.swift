//
//  HoroscopeDetail.swift
//  Zodiact
//
//  Created by MacBook Pro on 02/05/24.
//

import SwiftUI

struct HoroscopeDetail: View {
    
    var horoscope: Horoscope
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                HeaderView(horoscope: horoscope)
                
                HStack {
                    VStack (alignment: .leading, spacing: 24) {
                        Text(horoscope.name.uppercased())
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .padding(.vertical, 8)
                            .background(Color.purple.frame(height: 6).offset(y: 24))
                        
                        Text(horoscope.nickname.capitalized)
                            .font(.title)
                        
                        Text(horoscope.desc)
                            .font(.headline)
                    }
                }
                .padding()
            }
            .navigationTitle(horoscope.name)
            .navigationBarTitleDisplayMode(.inline)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    
    HoroscopeDetail(horoscope: HoroscopeProvider.allHoroscope().first!)
}

