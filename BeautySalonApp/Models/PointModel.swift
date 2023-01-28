//
//  PointModel.swift
//  BeautySalonApp
//
//  Created by 星優大 on 2023/01/15.
//

import Foundation
import RealmSwift

// ポイントモデル
class PointModel: ObservableObject{
    var config: Realm.Configuration
    
    init() {
        config = Realm.Configuration()
    }
    
    var realm: Realm {
        return try! Realm(configuration: config)
    }
    // 保存されている PointItem を Results<PointItem> として返す
    var item: Results<PointItem> {
        realm.objects(PointItem.self)
    }
    // 最初の1件取得
//    func firstItem() -> PointItem{
//        if let first = realm.objects(PointItem.self).first {
//            return first
//        }else{
//
//        }
//    }

    // 追加
    func create(_ point: Int) {
        // pointitemをインスタンス化
        let PointItem = PointItem()
        // 値を格納
        PointItem.id = UUID()
        PointItem.point = point
        // 新規データの作成
        try! realm.write {
            realm.add(PointItem)
        }
    }
    // 更新
    func update(_ point: Int) {
        // データ取得
        if let data = item.first{
            // データを更新
            try! realm.write {
                data.point = point
            }
        }
    }

}

// テーブル
class PointItem: Object, Identifiable {
    // ユニークキー
    @Persisted(primaryKey: true) var id: UUID = UUID()
    // ポイントカラム
    @Persisted  var point:Int
}

