//
//  ContentView.swift
//  Zikr-ios
//
//  Created by Саид-Насир Исмаилов on 2023/05/02.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color("contentBackground"))
    }
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Label("Main", systemImage: "book.fill")
                }
                .toolbarBackground(.visible, for: .tabBar)
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
                .toolbarBackground(.visible, for: .tabBar)
        }
        
//        .toolbarBackground(.visible, for: .tabBar)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
