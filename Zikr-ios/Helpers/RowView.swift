//
//  RowView.swift
//  Zikr-ios
//
//  Created by Саид-Насир Исмаилов on 2023/05/07.
//

import SwiftUI

struct RowView: View {
    let zikr: Zikr
    
    struct Arrow: Shape {
        func path(in rect: CGRect) -> Path {
            var path = Path()
            path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            return path
        }
    }

    var body: some View {
        
        VStack {
            
            HStack{
                Text(zikr.title)
                    .multilineTextAlignment(.leading)
                    .padding()
                    .foregroundColor(Color("contentForeground"))
                Spacer()
                Arrow()
                    .stroke(Color.gray, lineWidth: 2)
                    .frame(width: 10, height: 6)
                    .cornerRadius(0)
                    .rotationEffect(.degrees(90))
                    .padding(.trailing, 20)
            }
            
        }
        
    }
}

struct RowView_Previews: PreviewProvider {
    static var supplications: [Zikr] = loadZikrData()
    
    static var previews: some View {
        RowView(zikr: supplications[4])
    }
}
