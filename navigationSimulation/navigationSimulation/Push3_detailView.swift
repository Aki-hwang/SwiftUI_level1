//
//  Push3_detailView.swift
//  navigationSimulation
//
//  Created by Chuljin Hwang on 2022/01/24.
//

import SwiftUI

struct Push3_detailView: View {
    
    @Binding var showsheetview2: Bool
    var body: some View {
        NavigationView{
            Text("Push 3 sheetView")
                .navigationBarTitle(Text("sheet view"), displayMode: .inline)
                .navigationBarItems(trailing: Button(action: {
                    self.showsheetview2.toggle()
                }, label: {
                    Text("Done")
                }))
        }
       
    }
}

struct Push3_detailView_Previews: PreviewProvider {
    static var previews: some View {
        Push3_detailView(showsheetview2: .constant(true))
    }
}
