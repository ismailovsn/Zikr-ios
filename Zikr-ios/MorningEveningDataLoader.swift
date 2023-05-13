//
//  MorningEveningDataLoader.swift
//  Zikr-ios
//
//  Created by Саид-Насир Исмаилов on 2023/05/13.
//

import Foundation

func loadMorningEveningZikrData() -> [MorningEveningZikr] {
    guard let url = Bundle.main.url(forResource: "MorningEveningZikrData", withExtension: "json") else {
        fatalError("MorningEveningZikrData.json file not found.")
    }
    
    do {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        let supplications = try decoder.decode([MorningEveningZikr].self, from: data)
        return supplications
    } catch {
        print("Error decoding MorningEveningZikrData.json: \(error)")
        fatalError("Failed to decode MorningEveningZikrData.json file.")
    }
}
