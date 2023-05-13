//
//  MorningView.swift
//  Zikr-ios
//
//  Created by Саид-Насир Исмаилов on 2023/05/03.
//

import SwiftUI

struct MorningMenuView: View {
    let morningAzkar: [MorningEveningZikr] = loadMorningEveningZikrData().filter { $0.type == "morning" }
    
    var body: some View {
        List(morningAzkar) { morningEveningZikr in
            NavigationLink {
                MorningEveningZikrView(morningEveningZikr: morningEveningZikr)
            } label: {
                Text(morningEveningZikr.title)
            }

        }
        .navigationTitle("Тонгги зикрлар")
    }
}

struct MorningMenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MorningMenuView()
        }
    }
}
