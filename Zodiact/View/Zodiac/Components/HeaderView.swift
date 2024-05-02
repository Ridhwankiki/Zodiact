//
//  HeaderView.swift
//  Zodiact
//
//  Created by MacBook Pro on 02/05/24.
//

import SwiftUI

struct HeaderView: View {
    
    var horoscope: Horoscope
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            Color.purple
            
            Text(horoscope.icon)
                .font(.system(size: 255))
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 8, x: 6, y: 8)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
            
        }
//        .background(.purple)
        .frame(height: 450)
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating.toggle()
            }
        }
    }
}

#Preview {
    HeaderView(horoscope: HoroscopeProvider.allHoroscope().last!)
}
