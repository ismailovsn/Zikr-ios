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
                        
                        
                        VStack {
                            ForEach(supplications) { zikr in
                                NavigationLink{
                                    ZikrView(zikr: zikr)
                                } label: {
                                    RowView(zikr: zikr)
                                        .padding(.horizontal)
                                        .foregroundColor(.black)
//                                    HStack {
//                                        Text(zikr.title)
//                                            .foregroundColor(.black)
//                                            .multilineTextAlignment(.leading)
//                                            .clipShape(Capsule())
//                                            .background(.white)
//                                    }
                                    
                                }
                            }
                        }
                        
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("Zikr")
            .background(.gray)
            
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
