//
//  MainView.swift
//  Zikr-ios
//
//  Created by Саид-Насир Исмаилов on 2023/05/03.
//

import SwiftUI



struct MainView: View {
    let supplications: [Zikr] = loadZikrData()
    
    var zikrList: some View {
        VStack {
            ForEach(supplications) { zikr in
                NavigationLink{
                    ZikrView(zikr: zikr)
                } label: {
                    RowView(zikr: zikr)
                        .padding(.horizontal)
                        .foregroundColor(.black)
                        .listStyle(.plain)
                }
            }
        }
        .background(Color("contentBackground"))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding(.horizontal)
        .shadow(radius: 5)
    }
    // MARK: - Body
    var body: some View {
        NavigationView {
//            GeometryReader { geo in
                ScrollView(.vertical) {
                    VStack (spacing: 15) {
                        HStack(spacing: 15) {
                            NavigationLink {
                                MorningMenuView()
                            } label: {
                                BigTileView(title: "Тонгги зикрлар", imageName: "sun.haze.circle.fill")
//                                    .frame(width: geo.size.width * 0.45)
                            }
                            
                            NavigationLink {
                                EveningMenuView()
                            } label: {
                                BigTileView(title: "Кечки зикрлар", imageName: "moon.haze.circle.fill")
//                                    .frame(width: geo.size.width * 0.45)
                            }
                        }
                        .padding(.horizontal)
//                        .frame(width: geo.size.width * 0.9)
                        
                        
                        zikrList
                    }
//                }
            }
            .navigationTitle("Zikr")
            .background(Color("background"))
            
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
