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
                        Text("Zodiac Name:")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        
                        Text(horoscope.name)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        Text(horoscope.desc)
                            .font(.subheadline)
                    }
                    Spacer()
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

