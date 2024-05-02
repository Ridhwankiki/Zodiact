//
//  HoroscopeRowBox.swift
//  Zodiact
//
//  Created by MacBook Pro on 02/05/24.
//

import SwiftUI

struct HoroscopeRow: View {
    
    var horoscope: Horoscope
    
    var body: some View {
        HStack (alignment: .top, spacing: 16) {
            Text(horoscope.icon)
                .font(.largeTitle)
                .padding()
                .frame(width: 80, height: 80)
                .background(.purple)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack (alignment: .leading) {
                Text(horoscope.name)
                    .font(.system(.headline, design: .rounded))
                Text(horoscope.time)
                    .font(.system(.subheadline, design: .rounded))
                Text(horoscope.nickname)
                    .font(.system(.subheadline, design: .rounded))
                    .padding(.top, 1)
                    .fontWeight(.semibold)
            }
        }
    }
}

#Preview {
    HoroscopeRow(horoscope: HoroscopeProvider.allHoroscope().first!)
}
