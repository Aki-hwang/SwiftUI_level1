//
//  ViewStack.swift
//  HelloWsiftUI
//
//  Created by Chuljin Hwang on 2022/01/22.
//

import SwiftUI

struct ViewStack: View {
    var body: some View {
        //Hstack 사용법
//        HStack(alignment: .top, spacing:0) {
//            Image(systemName: "suit.heart.fill")
//                .resizable()
//                .frame(width: 50, height: 50)
//                .foregroundColor(.red)
//            Image(systemName: "suit.club.fill")
//                .resizable()
//                .frame(width: 100, height: 100)
//                .foregroundColor(.red)
//            Image(systemName: "suit.heart.fill")
//                .resizable()
//                .frame(width: 50, height: 50)
//                .foregroundColor(.red)
//            Image(systemName: "suit.heart.fill")
//                .resizable() //사이즈에 맞게 맞춰진다
//                .frame(width: 50, height: 50)
//                .foregroundColor(.red)
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
        //Vstack 사용법
//        HStack {
//            VStack(alignment: .leading, spacing:0) {
//                Image(systemName: "suit.heart.fill")
//                    .resizable()
//                    .frame(width: 50, height: 50)
//                    .foregroundColor(.red)
//                Image(systemName: "suit.club.fill")
//                    .resizable()
//                    .frame(width: 100, height: 100)
//                    .foregroundColor(.red)
//                Image(systemName: "suit.heart.fill")
//                    .resizable()
//                    .frame(width: 50, height: 50)
//                    .foregroundColor(.red)
//                Image(systemName: "suit.heart.fill")
//                    .resizable() //사이즈에 맞게 맞춰진다
//                    .frame(width: 50, height: 50)
//                    .foregroundColor(.red)
//            }
//            .frame(maxHeight: .infinity)
//            Spacer()
//            //가장 왼쪽으로 배치하기 위해 Hstack으로 감싸고 스페이서를 추가
//        }
        //Zstack
        ZStack(alignment: .center) {
            Image(systemName: "suit.heart.fill")
                .resizable()
                .frame(width: 300, height: 300)
                .foregroundColor(.red)
            Image(systemName: "suit.club.fill")
                .resizable()
                .frame(width: 300, height: 300)
                .foregroundColor(.black)
            Image(systemName: "suit.heart.fill")
                .resizable()
                .frame(width: 300, height: 300)
                .foregroundColor(.black)
            Image(systemName: "suit.heart.fill")
                .resizable() //사이즈에 맞게 맞춰진다
                .frame(width: 300, height: 300)
                .foregroundColor(.red)
                .offset(x:100, y:100 )
                    }
        
    }
}

struct ViewStack_Previews: PreviewProvider {
    static var previews: some View {
        ViewStack()
    }
}




