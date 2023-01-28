//
//  ShopMapView.swift
//  BeautySalonApp
//
//  Created by 星優大 on 2023/01/28.
//
import SwiftUI
import MapKit

// マップを表示画面
struct ShopMapView: View {
    // マーカーの位置を指定
    let shoplist = [Shop(latitude: 35.6809591, longitude: 139.7673068)]
    
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 35.6809591,
            longitude: 139.7673068
        ),
        latitudinalMeters: 1000,
        longitudinalMeters: 1000
    )
    var body: some View {
        // 地図表示
        Map(
            coordinateRegion: $region,
            annotationItems: shoplist,
            annotationContent: { shop in
                MapMarker(coordinate: shop.coordinate, tint: .red)
            }
        )
    }
}
// 店の場所の構造体
struct Shop: Identifiable {
    let id = UUID()
    let latitude:Double
    let longitude:Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

