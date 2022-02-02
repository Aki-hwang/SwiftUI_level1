//
//  ContentView.swift
//  MyModifierTest
//
//  Created by Chuljin Hwang on 2022/02/02.
//

import SwiftUI
import Combine //Observable 객체를 부르기 위해

class DemoData : ObservableObject{
    @Published var userCount = 0
    @Published var currrentCount = 0
    init(userCount : Int, currentCount : Int){
        self.userCount = userCount
        self.currrentCount = currentCount
        updateData()
    }
    func updateData(){
        
    }
}
struct ContentView: View {
    @EnvironmentObject var demodata: DemoData
    var body: some View {
        Text("\(demodata.userCount), your member \(demodata.currrentCount)")
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(DemoData(userCount: 0, currentCount: 0))
       
    }
}
