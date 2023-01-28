//
//  ContentView.swift
//  BeautySalonApp
//
//  Created by 星優大 on 2022/09/17.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTag = 1
    var body: some View {
        TabView(selection: $selectedTag){
            HomeView().tabItem {
                Image(systemName: "house")
                Text("ホーム")
            }.tag(1)
            ShopMapView().tabItem {
                Image(systemName: "map")
                Text("アクセス")
            }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
