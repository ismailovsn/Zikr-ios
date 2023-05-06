//
//  ZikrView.swift
//  Zikr-ios
//
//  Created by Саид-Насир Исмаилов on 2023/05/06.
//

import SwiftUI

struct ZikrView: View {
    let zikr: Zikr
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    
                    HStack {
                        Spacer()
                        Text(zikr.arabicText)
                            .font(.system(size: 24, design: .default))
                            .multilineTextAlignment(.leading)
                    }
                    
                    Divider()
                    
                        Text(zikr.translation)
                            .font(.system(size: 18, weight: .medium, design: .default))

                    Divider()
                    Text(zikr.transliteration)
                        .font(.system(size: 18, weight: .medium, design: .default))
                        .italic()
                    
                    
                }
                .padding()
            }
            .navigationTitle(zikr.title)
        }
    }
}

struct ZikrView_Previews: PreviewProvider {
    static var previews: some View {
        ZikrView(zikr: Zikr(id: 1, title: "Sample Supplication", arabicText: "بِسْمِ اللهِ الرَّحْمٰنِ الرَّحِيْمِ", translation: "In the name of Allah, the Most Gracious, the Most Merciful.", transliteration: "Bismillahir Rahmanir Rahim"))
    }
}
