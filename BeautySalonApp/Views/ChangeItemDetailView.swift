//
//  ChangeItemDetailView.swift
//  BeautySalonApp
//
//  Created by 星優大 on 2023/01/09.
//

import SwiftUI

struct ChangeItemDetailView: View {
    @Environment(\.dismiss) var dismiss
    @State var showingAlert:Bool = false
    @EnvironmentObject var viewModel:ScannerViewModel
    
    var photo:ChangePointListData
    
    // 画面幅
    var w : CGFloat = UIScreen.main.bounds.width - 10
    
    // 画面幅
    var back_w:CGFloat = UIScreen.main.bounds.size.width
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                Color.white
                VStack{
                    ZStack{
                        Image(photo.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: back_w,
                                   height: geometry.size.height / 2)
                        Button(action: {
                            dismiss()
                        }) {
                            Image(systemName: "chevron.backward")
                                .font(.system(size: 17, weight: .medium))
                                .foregroundColor(.blue)
                        }
                        .position(x:20,y: 8)
                    }
                    .frame(width: back_w,
                           height: geometry.size.height / 2)
                    .background(Color(red: 0.9, green: 0.9, blue: 0.9))
                    VStack{
                        Text(photo.title)
                            .foregroundColor(Color.black)
                            .font(.title)
                        VStack{
                            Text("商品詳細")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal)
                                .font(.title2)
                                .foregroundColor(Color.gray)
                            Text(photo.detail)
                                .foregroundColor(Color.black)
                                .padding(.horizontal)
                        }
                    }.padding(.top)
                    Spacer()
                    Button {
                        if(viewModel.point > 0){
                            viewModel.isShowing=true
                        }else{
                            showingAlert = true
                        }
                    } label: {
                        Text("ポイントで交換する")
                    .foregroundColor(Color.white)
                    .frame(width: w,height: 60)
                    .background(Color.blue)
                    .cornerRadius(24)
                    .padding(.bottom)
                    }
                    .fullScreenCover(isPresented: $viewModel.isShowing) {
                        SecondView(viewModel: viewModel)
                    }
                    .alert(isPresented: $showingAlert) {
                        Alert(title: Text("ポイントが不足しています"),
                              message: Text("お客様のポイントが不足しているためアイテムと交換できません"),
                              dismissButton: .default(Text("OK")))  // ボタンの変更
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
        }

    }
}

struct ChangeItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeItemDetailView(photo: photoArray[0])
    }
}
