//
//  Multiselection.swift
//  HelloWsiftUI
//
//  Created by Chuljin Hwang on 2022/01/22.
//

//import SwiftUI
//
//struct Multiselection: View {
//    var items = AppleProduct.sampleList
//    @State private var selected: Set<AppleProduct> = []
//    var body: some View {
//        NavigationView{
//            VStack {
//               
//                Text("\(selected.count) item(s) selected")
//                    .font(.title)
//                List(items, id: \.self, selection: $selected){ item in
//                    Text(item.name)
//
//                }
//            }
//            .navigationTitle(Text("Managing selection"))
//            .navigationBarItems(trailing: EditButton())
//        }
//        
//    }
//}
//
//struct Multiselection_Previews: PreviewProvider {
//    static var previews: some View {
//        Multiselection()
//    }
//}
