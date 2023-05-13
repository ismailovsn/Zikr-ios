//
//  MorningEveningZikrData.swift
//  Zikr-ios
//
//  Created by Саид-Насир Исмаилов on 2023/05/13.
//

import Foundation

struct MorningEveningZikr: Identifiable, Codable {
    let id: Int
    let title: String
    let arabicText: String
    let translation: String
    let transliteration: String
    let type: String
    let count: Int
    let source: String
}
