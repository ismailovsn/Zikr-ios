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
        
        ZStack {
            
//            Color.clear.background(
                Color("contentBackground")
//            )
            
            HStack {
                VStack(alignment: .leading) {
                    Image(systemName: imageName)
                        .font(.system(size: 30))
                        .foregroundColor(.accentColor)
                    
                    Text(title)
                        .foregroundColor(Color("contentForeground"))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                }
                .padding(.leading, 5)
                .padding([.top, .bottom, .trailing])
            }
        }
        .cornerRadius(10)
        .shadow(radius: 5)
    }
    
    var body: some View {
        bigTileContent
    }
}

struct BigTileView_Previews: PreviewProvider {
    static var previews: some View {
        BigTileView(title: "Тонгги Зикрлар", imageName: "sun.max.circle.fill")
    }
}
