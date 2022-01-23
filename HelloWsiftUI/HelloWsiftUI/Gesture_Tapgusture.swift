//
//  Gesture_Tapgusture.swift
//  HelloWsiftUI
//
//  Created by Chuljin Hwang on 2022/01/23.
//

import SwiftUI

struct Gesture_Tapgesture: View {
    @State private var tapCount = 0
    
    var tapToPlus : some Gesture{
        TapGesture()
            .onEnded{
                self.tapCount += 1
            }
    }
    var body: some View {
        VStack {
            Text("\(tapCount)")
                .font(.system(size: 250))
                //탭제스춰 추가
                //더블탭을 먼저 해야 진행이 가능해
                //하지만 속도는 느려질 수 있어 그래서 뷰 하나당 하나의 제스춰만 쓰길 추천해
                .onTapGesture(count: 2){ //더블 클릭을 표현하기위해 count2로 표현
                    self.tapCount = 0
                }
                .onTapGesture {
                    self.tapCount += 1
                }
         
               
            HStack{
                Image(systemName: "minus.circle")
                    .font(.system(size: 100))
                    .foregroundColor(.red)
                    .padding()
                //대상뷰에 제셔처 넣고 제스터 넣고 온 엔디드에 액션을 넣어
                   
                   
                Image(systemName: "plus.circle")
                    .font(.system(size: 100))
                    .foregroundColor(.blue)
                    .padding()
                    .gesture(tapToPlus)
            }
        }
    }
}

struct Gesture_Tapgesture_Previews: PreviewProvider {
    static var previews: some View {
        Gesture_Tapgesture()
    }
}
