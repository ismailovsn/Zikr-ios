//
//  EveningZikrView.swift
//  Zikr-ios
//
//  Created by Саид-Насир Исмаилов on 2023/05/03.
//

import SwiftUI

struct EveningMenuView: View {
    let eveningAzkar: [MorningEveningZikr] = loadMorningEveningZikrData().filter { $0.type == "evening" }
    
    var body: some View {
        List(eveningAzkar) { morningEveningZikr in
            NavigationLink {
                MorningEveningZikrView(morningEveningZikr: morningEveningZikr)
            } label: {
                Text(morningEveningZikr.title)
            }

        }
        .navigationTitle("Кечки зикрлар")
    }
}

struct EveningMenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            EveningMenuView()
        }
    }
}
