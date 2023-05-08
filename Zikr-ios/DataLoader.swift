//
//  DataLoader.swift
//  Supplication
//
//  Created by Саид-Насир Исмаилов on 2023/04/26.
//

import Foundation

func loadZikrData() -> [Zikr] {
    guard let url = Bundle.main.url(forResource: "ZikrData", withExtension: "json") else {
        fatalError("ZikrData.json file not found.")
    }
    
    do {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        let supplications = try decoder.decode([Zikr].self, from: data)
        return supplications
    } catch {
        print("Error decoding ZikrData.json: \(error)")
        fatalError("Failed to decode ZikrData.json file.")
    }
}



