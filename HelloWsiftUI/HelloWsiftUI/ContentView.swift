//
//  ContentView.swift
//  HelloWsiftUI
//
//  Created by Chuljin Hwang on 2022/01/22.
//

import SwiftUI

struct ContentView: View {
    var a = 0
    var body: some View {
        VStack{
            Text("Hello, Swiftui!")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
                .background(Color.yellow)
            
            Text("Have a nice day!! :)")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
