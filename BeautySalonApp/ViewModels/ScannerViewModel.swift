//
//  ScannerViewModel.swift
//  BeautySalonApp
//
//  Created by 星優大 on 2022/12/18.
//

import Foundation

class ScannerViewModel: ObservableObject {
    
    // モデルの呼び出し
    @Published var model: PointModel = PointModel()

    // QRコードを読み取る時間間隔
    let scanInterval: Double = 1.0
    
    // 初期値をセット
    @Published var point: Int = 0
    @Published var lastQrCode: String = "QRコード"
    @Published var isShowing: Bool = false
    @Published var changePointScreen: Bool = false
    
    init() {
        if let first = model.item.first {
            // 初期値をセット
            self.point = first.point
        }
    }
    
    // QRコードを読み取り時に実行される。
    func onFoundQrCode(_ code: String) {
        // データ存在チェック
        if model.item.first != nil {
            // データが存在する場合
            switch code {
                case "shampoo","conditioner","oil":
                if(self.point > 0){
                    self.point -= 1
                    model.update(self.point)
                }
                break
                case "pointAdd":
                    self.point += 1
                    model.update(self.point)
                break
                default:
                break
            }
        }else{
            // データが存在しない場合
            if(code == "pointAdd"){
                self.point += 1
                model.create(self.point)
            }
        }
        self.lastQrCode = code
        isShowing = false
        changePointScreen = false
    }
}
