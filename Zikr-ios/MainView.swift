//
//  MainView.swift
//  Zikr-ios
//
//  Created by Саид-Насир Исмаилов on 2023/05/03.
//

import SwiftUI

struct Arrow: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        return path
    }
}

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
                        .overlay(
                            Arrow()
                                .stroke(Color.gray, lineWidth: 2)
                                .frame(width: 10, height: 6)
                                .cornerRadius(0)
                                .rotationEffect(.degrees(90))
                                .padding(.trailing, 20)
                                .padding(.bottom, 5),
                            alignment: .bottomTrailing
                        )
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
            ScrollView {
                GeometryReader { geo in
                    VStack (spacing: 25) {
                        HStack(spacing: 20) {
                            BigTileView(title: "Тонгги зикрлар", imageName: "sun.haze.circle.fill")
//                              .frame(width: geo.size.width * 0.45)
                            
                            BigTileView(title: "Кечки зикрлар", imageName: "moon.haze.circle.fill")
//                            .frame(width: geo.size.width * 0.45)
                        }
                        .frame(width: geo.size.width * 0.9)
                        .frame(width: geo.size.width)
                        
                        zikrList
                    }
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
