//
//  SingleSelection.swift
//  HelloWsiftUI
//
//  Created by Chuljin Hwang on 2022/01/22.
//

import SwiftUI

struct SingleSelection: View {
    var items = AppleProduct.sampleList
    @State private var selected: AppleProduct? = nil
    var body: some View {
        NavigationView{
            VStack {
                Text("selected: \(selected?.name ?? "-")")
                List(items, id: \.self, selection: $selected){ item in //id: \.self 인스턴트 전체로항목을 구분
                    Button(action: {
                      //  self.selected = item
                    }, label: {
                        Text(item.name)
                    })

                }
            }
            .navigationTitle(Text("Managing selection"))
            .navigationBarItems(trailing: EditButton())
        }
        
    }
}

struct SingleSelection_Previews: PreviewProvider {
    static var previews: some View {
        SingleSelection()
    }
}
