//
//  MagicList.swift
//  HelloWsiftUI
//
//  Created by Chuljin Hwang on 2022/01/22.
//

import SwiftUI

struct MagicList: View {
    var body: some View {
        List {
            HStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)

            }
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Image(systemName: "star")
            Toggle(isOn: .constant(true)){
                Text("On")
            }
        }
    }
}

struct MagicList_Previews: PreviewProvider {
    static var previews: some View {
        MagicList()
    }
}
