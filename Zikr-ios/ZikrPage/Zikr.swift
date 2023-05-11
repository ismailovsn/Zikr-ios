//
//  Supplication.swift
//  Supplication
//
//  Created by Саид-Насир Исмаилов on 2023/04/26.
//

import Foundation

struct Zikr: Codable, Identifiable {
    let id: Int
    let title: String
    let arabicText: String
    let translation: String
    let transliteration: String
    var count: Int
    let source: String
}
