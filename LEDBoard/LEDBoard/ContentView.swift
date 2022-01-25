//
//  ContentView.swift
//  LEDBoard
//
//  Created by Chuljin Hwang on 2022/01/24.
//

import SwiftUI

struct ContentView: View {
    @Binding var textContent : String
    var body: some View {
        NavigationView{
            ZStack{
                Color.black
                Text(textContent)
                    .font(.system(size: 100))
                    .foregroundColor(.yellow)
                    .fontWeight(.bold)
                    .padding()
                    .navigationBarTitle("LED Board", displayMode: .inline)
                    .navigationBarItems(trailing: NavigationLink(destination: controlView(), label: {Text("설정")}))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(textContent: Text("ddd"))
    }
}
