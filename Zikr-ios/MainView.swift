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
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                    VStack (spacing: 25) {
                        HStack(spacing: 15) {
                            BigTileView(title: "Тонгги зикрлар", imageName: "sun.haze.circle.fill")
                            
                            BigTileView(title: "Кечки зикрлар", imageName: "moon.haze.circle.fill")
                        }
                        
                        zikrList
                    }
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
