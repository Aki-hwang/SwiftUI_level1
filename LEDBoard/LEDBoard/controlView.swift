//
//  controlView.swift
//  LEDBoard
//
//  Created by Chuljin Hwang on 2022/01/24.
//

import SwiftUI

struct controlView: View {
    @State private var textContent : String = ""
    @State private var yellowToggle = false
    @State private var jajuToggle = false
    @State private var boraToggle = false
    @State private var blackToggle = false
    @State private var blueToggle = false
    @State private var orangeToggle = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView{
            List{
                Section{
                Text("전광판에 표시할 글자")
                TextField("전광판에 표시할 글자", text: $textContent)
                }
                Section{
                Text("텍스트 색상 설정")
                    Toggle(isOn: $yellowToggle) {
                        Text("노란색")
                    }
                    Toggle(isOn: $jajuToggle) {
                        Text("자주색")
                    }
                    Toggle(isOn: $boraToggle) {
                        Text("보라색")
                    }
                }
                Section{
                Text("배경 색상 설정")
                    Toggle(isOn: $blackToggle) {
                        Text("검정섹")
                    }
                    Toggle(isOn: $blueToggle) {
                        Text("파랑색")
                    }
                    Toggle(isOn: $orangeToggle) {
                        Text("주황색")
                    }
                }
                Button(action: {
                    ContentView(textContent: $textContent)
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("저장")
                
                        
                })
            }
            .navigationBarTitle("설정", displayMode: .inline)
            
        }

        
    }
}

struct controlView_Previews: PreviewProvider {
    static var previews: some View {
        controlView()
    }
}
