//
//  MagicText.swift
//  HelloWsiftUI
//
//  Created by Chuljin Hwang on 2022/01/22.
//

import SwiftUI

let longText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."

struct MagicText: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .foregroundColor(.blue)
                .background(Color.green)
            Text(longText)
                .frame(width: 250)
                .lineLimit(7)
                .truncationMode(.tail)//점점점 위치 지정
                .multilineTextAlignment(.center)//모든아이들이 센터 정렬
                .lineSpacing(7) //라인 여백 설정
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting")
                .font(.largeTitle)
                .frame(width:300)
                .lineLimit(1)
                .allowsTightening(true)//너비가 부족한 경우 최대한 줄여서 모든 문자열을 줄이려고 노력
                .minimumScaleFactor(0.5) //0.0~1.0이렇게 하면 너비가 부족하면 최대 50%까지 축소
           
        }
    }
}

struct MagicText_Previews: PreviewProvider {
    static var previews: some View {
        MagicText()
    }
}
