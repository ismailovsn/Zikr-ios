//
//  MainView.swift
//  Zikr-ios
//
//  Created by Саид-Насир Исмаилов on 2023/05/03.
//

import SwiftUI

struct MainView: View {
    let supplications: [Zikr] = loadZikrData()
    
    var body: some View {
        NavigationView {
            ScrollView {
                GeometryReader { geo in
                    VStack (spacing: 25) {
                        HStack(spacing: 25) {
                            BigTileView(title: "Тонгги зикрлар", imageName: "sun.haze.circle.fill")
                            //                    .frame(width: geo.size.width * 0.45)
                            
                            BigTileView(title: "Кечки зикрлар", imageName: "moon.haze.circle.fill")
                            //                    .frame(width: geo.size.width * 0.45)
                        }
                        .frame(width: geo.size.width * 0.9)
                        .frame(width: geo.size.width)
                        
                        
                        ForEach(supplications) { zikr in
                            NavigationLink(destination: ZikrView(zikr: zikr)) {
                                Text(zikr.title)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Zikr")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
