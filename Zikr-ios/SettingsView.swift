//
//  SettingsView.swift
//  Zikr-ios
//
//  Created by Саид-Насир Исмаилов on 2023/05/03.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        HStack {
            Image(systemName: "gear")
            Text("Settings")
        }
        .padding()
        .font(.title)
        .foregroundColor(.white)
        .background(.blue)
        .clipShape(Capsule())
    
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
