//
//  PointChangeListData.swift
//  BeautySalonApp
//
//  Created by 星優大 on 2023/01/08.
//

import Foundation

// 写真データを配列に入れる
var photoArray:[ChangePointListData] = makeData()

struct ChangePointListData : Identifiable {
    var id : Int
    var url : String
    var imageName : String
    var title: String
    var detail: String
}

func makeData() -> [ChangePointListData]{
    var datas:[ChangePointListData] = []
    datas.append(ChangePointListData(id: 1,
                                     url: "shampoo",
                                     imageName: "shampoo",
                                     title: "シャンプー",
                                     detail: "今までのシャンプーよりもはるかに良いものとなっております。"
                                    )
    )
    datas.append(ChangePointListData(id: 2,
                                     url: "conditioner",
                                     imageName: "conditioner",
                                     title: "コンディショナー",
                                     detail: "コンディショナーは、３つの中からお好きな物をお選びいただけます。"
                                    )
    )
    datas.append(ChangePointListData(id: 3,
                                     url: "oil",
                                     imageName: "oil",
                                     title: "ヘアーオイル",
                                     detail: "ラベンダーの香りがするヘアーオイルとなっています。"
                                    )
    )
    return datas
}
