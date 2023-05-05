//
//  Supplication.swift
//  Supplication
//
//  Created by Саид-Насир Исмаилов on 2023/04/26.
//

import Foundation

import Foundation

struct Supplication: Codable, Identifiable {
    let id: Int
    let title: String
    let arabicText: String
    let translation: String
    let transliteration: String
}
