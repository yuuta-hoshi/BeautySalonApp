//
//  ChangePointRowView.swift
//  BeautySalonApp
//
//  Created by 星優大 on 2023/01/08.
//

import SwiftUI

struct ChangePointRowView: View {
    var photo: ChangePointListData
    
    // 画面幅
    var w : CGFloat = UIScreen.main.bounds.width - 20

    var body: some View {
        HStack{
            VStack{
                Image(photo.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text(photo.title)
                    .foregroundColor(Color.black)
                    .bold()
                    .padding(.top, 10)
                    .padding(.bottom, 20)
            }
            .frame(width: w)
            .background(Color(red: 0.9, green: 0.9, blue: 0.9))
            Spacer()
        }
    }
}

struct ChangePointRowView_Previews: PreviewProvider {
    static var previews: some View {
        ChangePointRowView(photo:photoArray[0])
    }
}
