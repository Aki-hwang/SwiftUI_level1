//
//  MagicDynamicList.swift
//  HelloWsiftUI
//
//  Created by Chuljin Hwang on 2022/01/22.
//

import SwiftUI
import Foundation

//struct Product{
//    let name : String
////    let summary: String
////    let category: String
////    let price: Int
//}
////즉 Product라는 기본 구조체를 설정하고
////이를 extension해서 사용할수 있어 이 구조만 외우면대
//extension Product{
//    static var sampleList:[Product]{
//        return[
//            Product(name: "Macbook air"),
//            Product(name: "Macbook Pro")
//        ]
//    }
//}

struct MagicDynamicList: View {
    var items = Product.sampleList
    var body: some View {
        VStack {
            Text("Dynakic List!")
            List(items, id: \.name) { item in //items중 특정 값을 구분하기 위해 name으로 했어
                Text(item.name)
            }
        }
    }
}

struct MagicDynamicList_Previews: PreviewProvider {
    static var previews: some View {
        MagicDynamicList()
    }
}
