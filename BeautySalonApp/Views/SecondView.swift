//
//  SecondView.swift
//  BeautySalonApp
//
//  Created by 星優大 on 2022/12/18.
//

import SwiftUI

struct SecondView: View {
    
    @ObservedObject var viewModel : ScannerViewModel

    var body: some View {
        ZStack {
            // QRコード読み取りView
            QrCodeScannerView()
                .found(r: self.viewModel.onFoundQrCode)
                .interval(delay: self.viewModel.scanInterval)

            VStack {
                VStack {
                    Text("QRコードを読み取ります")
                        .bold()
                        .lineLimit(5)
                        .padding()
                        .background(Color.black)
                    Button("Close") {
                        self.viewModel.isShowing = false
                    }
                }
                .padding(.vertical, 20)
                Spacer()
            }.padding()
        }
    }
}
