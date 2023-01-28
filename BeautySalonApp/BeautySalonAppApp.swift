//
//  BeautySalonAppApp.swift
//  BeautySalonApp
//
//  Created by 星優大 on 2022/09/17.
//

import SwiftUI

@main
struct BeautySalonAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(ScannerViewModel())
        }
    }
}
