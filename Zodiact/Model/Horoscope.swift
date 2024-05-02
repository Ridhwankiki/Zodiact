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
    let desc: String
}

struct HoroscopeProvider {
    static func allHoroscope() -> [Horoscope] {
        let HoroscopeData = [
            Horoscope(
                icon: "♑️",
                name: "Capricorn",
                time: "22 Desember - 19 Januari",
                desc: "Capricorn adalah tanda zodiak yang ambisius dan bertanggung jawab. Mereka cenderung sangat disiplin dan fokus pada tujuan mereka. Namun, mereka juga bisa menjadi terlalu keras pada diri sendiri dan sulit bersenang-senang."),
            Horoscope(
                icon: "♒️",
                name: "Aquarius",
                time: "20 Januari - 18 Februari",
                desc: "Aquarius adalah tanda zodiak yang inovatif dan original. Mereka suka berpikir di luar kotak dan cenderung sangat mandiri. Namun, mereka juga bisa menjadi eksentrik dan sulit beradaptasi dengan norma sosial."),
            Horoscope(
                icon: "♓️",
                name: "Pisces",
                time: "19 Februari - 20 Maret",
                desc: "Pisces adalah tanda zodiak yang penuh empati dan sensitif. Mereka sangat intuitif dan memiliki imajinasi yang kuat. Namun, mereka juga bisa menjadi terlalu pemimpi dan mudah terbawa arus."),
            Horoscope(
                icon: "♈️",
                name: "Aries",
                time: "21 Maret - 19 April",
                desc: "Aries adalah tanda zodiak yang penuh semangat, penuh energi, dan berani. Mereka cenderung menjadi pemimpin alami dan suka mengambil inisiatif. Aries juga bisa menjadi agresif dan keras kepala di masa-masa tertentu."),
            Horoscope(
                icon: "♉️",
                name: "Taurus",
                time: "20 April - 20 Mei",
                desc: "Taurus dikenal karena kestabilan dan ketahanannya. Mereka cenderung praktis, sabar, dan memiliki kekuatan yang luar biasa. Namun, mereka juga bisa keras kepala dan sulit berubah pikiran."),
            Horoscope(
                icon: "♊️",
                name: "Gemini",
                time: "21 Mei - 20 Juni",
                desc: "Gemini adalah tanda zodiak yang penuh dengan energi dan kecerdasan. Mereka suka berkomunikasi dan cenderung sangat sosial. Kreatif dan mudah beradaptasi, namun mereka juga bisa terlalu berubah-ubah dan sulit berkonsentrasi."),
            Horoscope(
                icon: "♋️",
                name: "Cancer",
                time: "21 Juni - 22 Juli",
                desc: "Cancer adalah tanda zodiak yang sensitif dan penuh perasaan. Mereka cenderung setia dan melindungi terhadap orang-orang yang mereka cintai. Namun, mereka juga bisa menjadi terlalu emosional dan mudah terluka."),
            Horoscope(
                icon: "♌️",
                name: "Leo",
                time: "23 Juli - 22 Agustus",
                desc: "Leo adalah tanda zodiak yang percaya diri dan penuh gairah. Mereka suka menjadi pusat perhatian dan memiliki karisma yang kuat. Leo juga cenderung murah hati, namun terkadang bisa menjadi sombong."),
            Horoscope(
                icon: "♍️",
                name: "Virgo",
                time: "23 Agustus - 22 September",
                desc: "Virgo adalah tanda zodiak yang praktis dan analitis. Mereka sangat teliti dan suka merencanakan segala sesuatunya. Namun, mereka juga bisa menjadi terlalu kritis dan perfeksionis."),
            Horoscope(
                icon: "♎️",
                name: "Libra",
                time: "23 September - 22 Oktober",
                desc: "Libra adalah tanda zodiak yang penuh dengan keadilan dan harmoni. Mereka suka mencari keseimbangan dalam kehidupan dan cenderung ramah. Namun, mereka juga bisa menjadi terlalu ragu-ragu dan sulit membuat keputusan."),
            Horoscope(
                icon: "♏️",
                name: "Scorpio",
                time: "23 Oktober - 21 November",
                desc: "Scorpio adalah tanda zodiak yang penuh dengan intensitas dan kekuatan. Mereka sangat penuh gairah dan memiliki kemampuan untuk memahami secara mendalam. Namun, mereka juga bisa menjadi posesif dan memiliki sifat-sifat yang tidak dapat diprediksi."),
            Horoscope(
                icon: "♐️",
                name: "Sagitarius",
                time: "22 November - 21 Desember",
                desc: "Sagittarius adalah tanda zodiak yang suka petualangan dan kebebasan. Mereka penuh dengan optimisme dan semangat. Namun, mereka juga bisa menjadi kurang sabar dan kurang memperhatikan detail."),
        ]
    }
}

//
//  Emoji.swift
//  EmojiSearch
//
//  Created by MacBook Pro on 17/04/24.
//

import Foundation

struct Emoji: Identifiable {
    let id = UUID()
    let emoji: String
    let name: String
    let description: String
}

// MARK: - DUMMY DATA

struct EmojiProvider {
    static func allEmojis() -> [Emoji] {
        let EmojiData = [
            Emoji(
                emoji: "👾",
                name: "Alien Monster",
                description: "A friendly-looking, tentacled space creature with two eyes."),
            Emoji(
                emoji: "🎨",
                name: "Artist Palette",
                description: "A palette used by an artist when painting, to store and mix paint colors."),
            Emoji(
                emoji: "🥑",
                name: "Avocado",
                description: "A pear-shaped avocado, sliced in half to show its yellow-green flesh and "
                + "large brown pit."),
            Emoji(
                emoji: "🐿️",
                name: "Chipmunk",
                description: "A chipmunk, a small rodent with puffy cheeks."),
            Emoji(
                emoji: "🤯",
                name: "Exploding Head",
                description: "A yellow face with an open mouth, the top of its head exploding in the shape "
                + "of a brain-like mushroom cloud."),
            Emoji(
                emoji: "🦊",
                name: "Fox",
                description: "A friendly, cartoon-styled faced of a fox, the cunning canine, looking "
                + "straight ahead."),
            Emoji(
                emoji: "😀",
                name: "Grinning Face",
                description: "A yellow face with simple, open eyes and a broad, open smile, showing upper "
                + "teeth and tongue on some platforms."),
            Emoji(
                emoji: "🍟",
                name: "French Fries",
                description: "Thin-cut, golden-brown French fries, served in a red carton, as at "
                + "McDonald’s."),
            Emoji(
                emoji: "🐣",
                name: "Hatching Chick",
                description: "A baby chicken (chick), hatching from an egg and seeing the world for the "
                + "first time."),
            Emoji(
                emoji: "🌭",
                name: "Hot Dog",
                description: "The cooked sausage of a hot dog in a sliced bun and drizzled with yellow "
                + "mustard, as eaten at a baseball game."),
            Emoji(emoji: "🪁", name: "Kite", description: "A diamond-shaped kite with a tail."),
            Emoji(
                emoji: "🔍",
                name: "Magnifying Glass Tilted Left",
                description: "A classic magnifying glass, as used to view small objects, with its lens "
                + "pointed left."),
            Emoji(
                emoji: "🏓",
                name: "Ping Pong",
                description: "A paddle and ping pong ball used in the sport of table tennis."),
            Emoji(
                emoji: "🍕",
                name: "Pizza",
                description: "A slice of pepperoni pizza, topped with black olives on Google. WhatsApp "
                + "adds green pepper, Samsung white onion."),
            Emoji(
                emoji: "🧩",
                name: "Puzzle Piece",
                description: "Puzzle Piece was approved as part of Unicode 11.0 in 2018 under the name "
                + "“Jigsaw Puzzle Piece” and added to Emoji 11.0 in 2018."),
            Emoji(
                emoji: "🚀",
                name: "Rocket",
                description: "A rocket being propelled into space."),
            Emoji(
                emoji: "📌",
                name: "Round Pushpin",
                description: "A thumbtack (drawing pin), as used to pin documents on a bulletin (notice) "
                + "board. Depicted at a 45° angle with its red, flat head to the upper right."),
            Emoji(
                emoji: "⛩️",
                name: "Shinto Shrine",
                description: "A shrine used for the Japanese Shinto religion. This emoji generally " +
                "displays the torii, which is the gate to the Shinto Shrine."),
            Emoji(
                emoji: "🥰",
                name: "Smiling Face with Hearts",
                description: "A yellow face with smiling eyes, a closed smile, rosy cheeks, and several "
                + "hearts floating around its head."),
            Emoji(
                emoji: "😈",
                name: "Smiling Face with Horns",
                description: "A face, usually purple, with devil horns, a wide grin, and eyes and eyebrows "
                + "scrunched downward on most platforms."),
            Emoji(
                emoji: "🤩",
                name: "Star-Struck",
                description: "A yellow face with a broad, open smile, showing upper teeth on most "
                + "platforms, with stars for eyes, as if seeing a beloved celebrity."),
            Emoji(
                emoji: "🗽",
                name: "Statue of Liberty",
                description: "The Statue of Liberty, often used as a depiction of New York City."),
            Emoji(
                emoji: "🌻",
                name: "Sunflower",
                description: "A sunflower, a tall, round flower with large yellow petals. Depicted as a "
                + "single, vertical sunflower with a large, dark-brown center on a green stem."),
            Emoji(
                emoji: "🧸",
                name: "Teddy Bear",
                description: "A classic teddy bear, as snuggled by a child when going to sleep."),
            Emoji(
                emoji: "🎾",
                name: "Tennis",
                description: "A tennis racket (racquet) with a tennis ball. Only a ball is shown on Apple, "
                + "LG, Twitter, Facebook, and Mozilla platforms."),
            Emoji(
                emoji: "🗼",
                name: "Tokyo Tower",
                description: "The Tokyo Tower is the second-tallest building in Japan, located in Minato, "
                + "Tokyo."),
            Emoji(
                emoji: "🦄",
                name: "Unicorn",
                description: "The face of a unicorn, a mythical creature in the form of a white horse with "
                + "a single, long horn on its forehead."),
            Emoji(
                emoji: "🍉",
                name: "Watermelon",
                description: "A slice of watermelon, showing its rich pink flesh, black seeds, and green "
                + "rind."),
            Emoji(
                emoji: "🚴🏽‍♀️",
                name: "Woman Biking",
                description: "The female version of the 🚴 Bicyclist emoji."),
            Emoji(
                emoji: "👩🏽‍💻",
                name: "Woman Technologist",
                description: "A woman behind a computer screen, working in the field of technology."),
            Emoji(
                emoji: "🗺",
                name: "World Map",
                description: "A rectangular map of the world. Generally depicted as a paper map creased at "
                + "its folds, Earth’s surface shown in green on blue ocean."),
        ]
        
        return EmojiData
    }
}
