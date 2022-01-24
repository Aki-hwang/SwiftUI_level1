//
//  Push1_detailView.swift
//  navigationSimulation
//
//  Created by Chuljin Hwang on 2022/01/24.
//

import SwiftUI

struct Push1_detailView: View {
    var message: String
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode> //back 버튼을 수행해 주기 위해 제공
    var body: some View {
        VStack{
            Text("\(message)")
                .padding()
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .imageScale(.large)
                    .padding()
            })
                .accentColor(.red)
            Spacer()
        }
        .navigationBarHidden(true) //네비게이션으로 백 시켜주는 버튼을 감추기
    }
}

struct Push1_detailView_Previews: PreviewProvider {
    static var previews: some View {
        Push1_detailView(message: "초기 메세지")
    }
}
