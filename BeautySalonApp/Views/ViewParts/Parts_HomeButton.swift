//
//  Parts_HomeButton.swift
//  BeautySalonApp
//
//  Created by 星優大 on 2023/01/29.
//

import SwiftUI

// ホームボタンパーツ
struct Parts_HomeButton: View {
    @Binding var action:ScannerViewModel
    var body: some View {
        Button(action: {
            action = true
        }){
            HStack{
                Image(systemName: "repeat")
                Text("ポイント交換")
                    .font(.system(size: 22))
            }
            .padding()
            .accentColor(Color.white)
            .background(Color.blue)
            .cornerRadius(25)
        }
    }
}
