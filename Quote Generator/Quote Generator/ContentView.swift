//
//  ContentView.swift
//  Quote Generator
//
//  Created by Chuljin Hwang on 2022/01/23.
//

import SwiftUI
import Foundation
struct quote_struct {
    let content : String
    let name : String
}
let quotes = [
    quote_struct(content: "죽음을 두려워하는 나머지 삶을 시작조차 못하는 사람이 많다.", name: "벤다이트"),
    quote_struct(content: "나는 나자신", name: "비룡"),
    quote_struct(content: "편견이란", name: "암스로스빌")
]

struct ContentView: View {
    @State var randomInt = 0
    @State var quote_text = ""
    @State var quote_name = ""
    var body: some View {
        VStack {
            Text("명언 생성기")
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .padding()
            ZStack {
                Rectangle()
                    .frame(width: 350, height: 200, alignment: .center)
                    .foregroundColor(Color(hue: 0.394, saturation: 0.07, brightness: 0.903))
                    .cornerRadius(20)
                VStack() {
                    Text("\(quote_text)")
                        .font(.headline)
                        .fontWeight(.regular)
                        .padding()
                    Text("\(quote_name)")
                        .font(.subheadline)
                }
            }
            Button(action: {
                self.randomInt = Int.random(in: 0 ... 2)
                let quote = quotes[self.randomInt]
                self.quote_text = quote.content
                self.quote_name = quote.name
            }, label: {
                Text("명언 생성")
                    .font(.title)
                    .foregroundColor(Color.red)
                    
            })
            Spacer()
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



