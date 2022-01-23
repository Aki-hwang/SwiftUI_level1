//
//  NavigationView.swift
//  HelloWsiftUI
//
//  Created by Chuljin Hwang on 2022/01/23.
//

import SwiftUI

struct NavigationView_test: View {
    @State private var barhidden = false
    @State private var push = false
    var body: some View {
        NavigationView{
            VStack{
                Button(action: {
//                    self.barhidden.toggle()
                    self.push = true
                }, label: {
                    Text("Toggle Navigation Bar")
                       
                })
                    .padding()
                NavigationLink(destination: MagicList(), label: {
                    Text("Push")
                })
                    .padding()
                NavigationLink(destination: MagicList(), isActive: $push, label: { // push가 트루가 되니까 push가 진행되는거야
                    Text("Push2")
                })
                    .padding()
            }
            .navigationBarTitle("Navgation View")
            .navigationBarHidden(barhidden) //true면 숨겨지고 토글되면서 바를 없애줌
            .navigationBarItems(leading: Button("Close",action:{} ), trailing: TrailingButtonView())
        }//navi
       
    }
}

struct NavigationView_test_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView_test()
    }
}

struct TrailingButtonView: View {
    var body: some View {
        HStack{
            Button(action: {}, label: {
                Image(systemName: "square.and.arrow.up")
            })
            Toggle(isOn: .constant(true), label: {
                Text("Toggle")
            })
                .labelsHidden() //토글의 라벨지우기
        }
    }
}
