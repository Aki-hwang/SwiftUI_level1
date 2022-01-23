//
//  ContentView.swift
//  navigationSimulation
//
//  Created by Chuljin Hwang on 2022/01/23.
//

import SwiftUI

struct Push1_detailView: View{
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

struct ContentView: View {
    var body: some View {
        HStack {
            NavigationView{
                VStack(spacing:100){
                    NavigationLink(destination: Push1_detailView(message: "전달할 메세지 작성"), label: {
                        Text("Push 1")
                    })
                        
                    Button(action: {
                        
                    }, label: {
                        Text("Push 2")
                    })
                        .padding()
                    Button(action: {
                        
                    }, label: {
                        Text("Push 3")
                    })
                        .padding()
                    Button(action: {
                        
                    }, label: {
                        Text("Push 4")
                    })
                        .padding()
                    Spacer()
        
                }
                .navigationBarTitle("Navigation Simulation")
            }
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
