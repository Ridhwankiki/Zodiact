//
//  Horoscope.swift
//  Zodiact
//
//  Created by MacBook Pro on 02/05/24.
//

import Foundation

struct Horoscope: Identifiable {
    let id = UUID()
    let icon: String
    let name: String
    let time: String
    let nickname: String
    let desc: String
}

struct HoroscopeProvider {
    static func allHoroscope() -> [Horoscope] {
        let HoroscopeData = [
            Horoscope(
                icon: "♑️",
                name: "Capricorn",
                time: "22 Desember - 19 Januari",
                nickname: "The Ambitious Goat",
                desc: "Capricorn adalah tanda zodiak yang ambisius dan bertanggung jawab. Mereka cenderung sangat disiplin dan fokus pada tujuan mereka. Namun, mereka juga bisa menjadi terlalu keras pada diri sendiri dan sulit bersenang-senang."),
            Horoscope(
                icon: "♒️",
                name: "Aquarius",
                time: "20 Januari - 18 Februari",
                nickname: "The Visionary Innovator",
                desc: "Aquarius adalah tanda zodiak yang inovatif dan original. Mereka suka berpikir di luar kotak dan cenderung sangat mandiri. Namun, mereka juga bisa menjadi eksentrik dan sulit beradaptasi dengan norma sosial."),
            Horoscope(
                icon: "♓️",
                name: "Pisces",
                time: "19 Februari - 20 Maret",
                nickname: "The Dreamer",
                desc: "Pisces adalah tanda zodiak yang penuh empati dan sensitif. Mereka sangat intuitif dan memiliki imajinasi yang kuat. Namun, mereka juga bisa menjadi terlalu pemimpi dan mudah terbawa arus."),
            Horoscope(
                icon: "♈️",
                name: "Aries",
                time: "21 Maret - 19 April",
                nickname: "The Trailblazer",
                desc: "Aries adalah tanda zodiak yang penuh semangat, penuh energi, dan berani. Mereka cenderung menjadi pemimpin alami dan suka mengambil inisiatif. Aries juga bisa menjadi agresif dan keras kepala di masa-masa tertentu."),
            Horoscope(
                icon: "♉️",
                name: "Taurus",
                time: "20 April - 20 Mei",
                nickname: "The Reliable Stalwart",
                desc: "Taurus dikenal karena kestabilan dan ketahanannya. Mereka cenderung praktis, sabar, dan memiliki kekuatan yang luar biasa. Namun, mereka juga bisa keras kepala dan sulit berubah pikiran."),
            Horoscope(
                icon: "♊️",
                name: "Gemini",
                time: "21 Mei - 20 Juni",
                nickname: "The Communicator",
                desc: "Gemini adalah tanda zodiak yang penuh dengan energi dan kecerdasan. Mereka suka berkomunikasi dan cenderung sangat sosial. Kreatif dan mudah beradaptasi, namun mereka juga bisa terlalu berubah-ubah dan sulit berkonsentrasi."),
            Horoscope(
                icon: "♋️",
                name: "Cancer",
                time: "21 Juni - 22 Juli",
                nickname: "The Nurturer",
                desc: "Cancer adalah tanda zodiak yang sensitif dan penuh perasaan. Mereka cenderung setia dan melindungi terhadap orang-orang yang mereka cintai. Namun, mereka juga bisa menjadi terlalu emosional dan mudah terluka."),
            Horoscope(
                icon: "♌️",
                name: "Leo",
                time: "23 Juli - 22 Agustus",
                nickname: "The Leader",
                desc: "Leo adalah tanda zodiak yang percaya diri dan penuh gairah. Mereka suka menjadi pusat perhatian dan memiliki karisma yang kuat. Leo juga cenderung murah hati, namun terkadang bisa menjadi sombong."),
            Horoscope(
                icon: "♍️",
                name: "Virgo",
                time: "23 Agustus - 22 September",
                nickname: "The Perfectionist",
                desc: "Virgo adalah tanda zodiak yang praktis dan analitis. Mereka sangat teliti dan suka merencanakan segala sesuatunya. Namun, mereka juga bisa menjadi terlalu kritis dan perfeksionis."),
            Horoscope(
                icon: "♎️",
                name: "Libra",
                time: "23 September - 22 Oktober",
                nickname: "The Harmonizer",
                desc: "Libra adalah tanda zodiak yang penuh dengan keadilan dan harmoni. Mereka suka mencari keseimbangan dalam kehidupan dan cenderung ramah. Namun, mereka juga bisa menjadi terlalu ragu-ragu dan sulit membuat keputusan."),
            Horoscope(
                icon: "♏️",
                name: "Scorpio",
                time: "23 Oktober - 21 November",
                nickname: "The Intense Scorpio",
                desc: "Scorpio adalah tanda zodiak yang penuh dengan intensitas dan kekuatan. Mereka sangat penuh gairah dan memiliki kemampuan untuk memahami secara mendalam. Namun, mereka juga bisa menjadi posesif dan memiliki sifat-sifat yang tidak dapat diprediksi."),
            Horoscope(
                icon: "♐️",
                name: "Sagitarius",
                time: "22 November - 21 Desember",
                nickname: "The Adventurous Optimist",
                desc: "Sagittarius adalah tanda zodiak yang suka petualangan dan kebebasan. Mereka penuh dengan optimisme dan semangat. Namun, mereka juga bisa menjadi kurang sabar dan kurang memperhatikan detail."),
        ]
        return HoroscopeData
    }
}

