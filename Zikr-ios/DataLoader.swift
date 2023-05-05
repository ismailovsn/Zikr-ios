//
//  DataLoader.swift
//  Supplication
//
//  Created by Саид-Насир Исмаилов on 2023/04/26.
//

import Foundation

func loadSupplicationsData() -> [Supplication] {
    guard let url = Bundle.main.url(forResource: "SupplicationsData", withExtension: "json") else {
        fatalError("SupplicationsData.json file not found.")
    }
    
    do {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        let supplications = try decoder.decode([Supplication].self, from: data)
        return supplications
    } catch {
        print("Error decoding SupplicationsData.json: \(error)")
        fatalError("Failed to decode SupplicationsData.json file.")
    }
}



