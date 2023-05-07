//
//  RowView.swift
//  Zikr-ios
//
//  Created by Саид-Насир Исмаилов on 2023/05/07.
//

import SwiftUI

struct RowView: View {
    let zikr: Zikr

    var body: some View {
        
        VStack {
            Divider()
            HStack{
                Text(zikr.title)
                Spacer()
            }
            
        }
        
    }
}

struct RowView_Previews: PreviewProvider {
    static var supplications: [Zikr] = loadZikrData()
    
    static var previews: some View {
        RowView(zikr: supplications[0])
    }
}
