//
//  HomeView.swift
//  BeautySalonApp
//
//  Created by 星優大 on 2022/09/25.
//

import SwiftUI

// ホーム
struct HomeView: View{
    @EnvironmentObject var viewModel:ScannerViewModel
    // デバイスサイズ取得
    let DeviceSize = UIScreen.main.bounds.size
    // ポイントカードの値初期化
    let PointCardViewWidth:Double
    let PointCardViewHeight:Double
    init(){
        //ポイントカード横幅
        PointCardViewWidth = self.DeviceSize.width * 0.95
        //ポイントカード縦幅
        PointCardViewHeight = self.DeviceSize.height / 4
    }
    
    var body: some View {
        ZStack{
            Color.white
            VStack{
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.gray)
                        .frame(
                            width: PointCardViewWidth,
                            height: PointCardViewHeight
                    )
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.white)
                            .frame(
                                width: PointCardViewWidth * 0.97,
                                height: PointCardViewHeight * 0.95
                            )
                        VStack {
                            Text("現在のポイント")
                                .font(.system(size: 30))
                                .foregroundColor(Color.black)
                            HStack{
                                Text(String(self.viewModel.point))
                                    .font(.system(size: 28))
                                    .foregroundColor(Color.red)
                                Text("P")
                                    .font(.system(size: 28))
                                    .foregroundColor(Color.black)
                            }
                        }
                        
                    }
                }
                .padding(.top)
                .shadow(radius: 5)
                Spacer()
                Button(action: {
                    viewModel.isShowing = true
                }){
                    HStack{
                        Image(systemName: "plus.app")
                        Text("ポイント追加")
                            .font(.system(size: 22))
                    }
                    .padding()
                    .accentColor(Color.white)
                    .background(Color.red)
                    .cornerRadius(25)
                }
                .fullScreenCover(isPresented: $viewModel.isShowing) {
                    SecondView(viewModel: viewModel)
                }
                Button(action: {
                    viewModel.changePointScreen = true
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
                .padding(.bottom,10)
                .fullScreenCover(isPresented: $viewModel.changePointScreen) {
                    ChangePointListView()
                }
                
            }
        }

    }
}

