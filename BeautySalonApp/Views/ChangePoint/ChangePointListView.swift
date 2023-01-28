//
//  ChangePointListView.swift
//  BeautySalonApp
//
//  Created by 星優大 on 2023/01/08.
//

import SwiftUI

struct ChangePointListView: View {
    @EnvironmentObject var viewModel:ScannerViewModel
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVStack{
                    ForEach(photoArray) { item in
                        NavigationLink(destination: ChangeItemDetailView(photo: item)) {
                            ChangePointRowView(photo: item)
                            
                        }
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            viewModel.changePointScreen = false
                        } label: {
                            Text("閉じる")
                        }

                    }
                }
            }
        }
    }
}
