//
//  Push2_detailView.swift
//  navigationSimulation
//
//  Created by Chuljin Hwang on 2022/01/24.
//

import SwiftUI

struct Push2_detailView: View {
    @Binding var showsheetview: Bool
    var body: some View {
        NavigationView{
            Text("Push 2 sheetView")
                .navigationBarTitle(Text("sheet view"), displayMode: .inline)
                .navigationBarItems(trailing: Button(action: {
                    self.showsheetview.toggle()
                }, label: {
                    Text("Done")
                }))
        }
       
    }
}

struct Push2_detailView_Previews: PreviewProvider {
    static var previews: some View {
        Push2_detailView(showsheetview: .constant(true))
    }
}
