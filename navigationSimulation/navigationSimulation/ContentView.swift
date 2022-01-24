//
//  ContentView.swift
//  navigationSimulation
//
//  Created by Chuljin Hwang on 2022/01/23.
//

import SwiftUI
struct FullScreenModalView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Color.primary.edgesIgnoringSafeArea(.all)
            Button("Dismiss Modal") {
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}
struct ContentView: View {
    @State private var showsheetview = false
    @State private var showsheetview2 = false
    var body: some View {
        HStack {
            NavigationView{
                VStack(spacing:100){
                    NavigationLink(destination: Push1_detailView(message: "전달할 메세지 작성"), label: {
                        Text("Push 1 with navigationView")
                    })
                        
                    Button(action: {
                        self.showsheetview.toggle()
                    }, label: {
                        Text("Push 2 with sheet")
                    })
                        .sheet(isPresented: $showsheetview){
                            Push2_detailView(showsheetview: $showsheetview)
                        }
                        .padding()
                    
                    
                    Button("Present!") {
                        self.showsheetview2.toggle()
                    }
                    .fullScreenCover(isPresented: $showsheetview2, content: FullScreenModalView.init)
                    
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
