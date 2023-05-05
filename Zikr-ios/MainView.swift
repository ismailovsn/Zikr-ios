//
//  MainView.swift
//  Zikr-ios
//
//  Created by Саид-Насир Исмаилов on 2023/05/03.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        HStack(spacing: 20) {
            BigTileView(title: "Тонгги зикрлар", imageName: "sun.haze.circle.fill")
            
            BigTileView(title: "Кечки зикрлар", imageName: "moon.haze.circle.fill")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
