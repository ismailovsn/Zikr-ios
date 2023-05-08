//
//  BigTileView.swift
//  Zikr-ios
//
//  Created by Саид-Насир Исмаилов on 2023/05/02.
//

import SwiftUI

struct BigTileView: View {
    let title: String
    let imageName: String
    
    private var bigTileContent: some View {
        VStack(alignment: .leading) {
            Image(systemName: imageName)
                .font(.system(size: 30))
                .foregroundColor(.black)
            
            Text(title)
                .font(Font.system(.body, design: .rounded))
                .foregroundColor(.black)
                .fontWeight(.bold)
                .padding(.trailing, 10)
        }
        .padding()
        .background(Color("contentBackground"))
        .cornerRadius(20)
        .shadow(radius: 5)
        
    }
    
    var body: some View {
        Group {
            if title == "In the Morning" {
                NavigationLink(destination: MorningZikrView()) {
                    bigTileContent
                }
                .buttonStyle(PlainButtonStyle())
            } else {
                NavigationLink(destination: EveningZikrView()) {
                    bigTileContent
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }
}

struct BigTileView_Previews: PreviewProvider {
    static var previews: some View {
        BigTileView(title: "Тонгги Зикрлар", imageName: "sun.max.circle.fill")
    }
}
