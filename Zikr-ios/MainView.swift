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
                        HStack(spacing: 20) {
                            BigTileView(title: "Тонгги зикрлар", imageName: "sun.haze.circle.fill")
//                                                .frame(width: geo.size.width * 0.45)
                            
                            BigTileView(title: "Кечки зикрлар", imageName: "moon.haze.circle.fill")
//                                                .frame(width: geo.size.width * 0.45)
                        }
                        .frame(width: geo.size.width * 0.9)
                        .frame(width: geo.size.width)
                        
                        
                        VStack(alignment: .leading, spacing: 20.0) {
                            ForEach(supplications) { zikr in
                                NavigationLink{
                                    ZikrView(zikr: zikr)
                                } label: {
                                    HStack {
                                        Text(zikr.title)
                                            .foregroundColor(.black)
                                            .multilineTextAlignment(.leading)
                                            .clipShape(Capsule())
                                            .background(.white)
                                    }
                                    
                                }
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
