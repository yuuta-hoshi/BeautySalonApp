//
//  ContentView.swift
//  BeautySalonApp
//
//  Created by 星優大 on 2022/09/17.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        HomeView()
//        TabView(selection: $selectedTag){
//            HomeView().tabItem {
//                Image(systemName: "house")
//                Text("ホーム")
//            }.tag(1)
//            HomeView().tabItem {
//                Image(systemName: "plus.app")
//                Text("ポイント追加")
//            }.tag(2)
//            ChangePointListView().tabItem {
//                Image(systemName: "repeat")
//                Text("ポイント交換")
//            }.tag(3)
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
