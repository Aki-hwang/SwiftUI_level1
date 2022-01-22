//
//  Product.swift
//  HelloWsiftUI
//
//  Created by Chuljin Hwang on 2022/01/22.
//

import Foundation
struct Product{
    let name : String
//    let summary: String
//    let category: String
//    let price: Int
}

extension Product{
    static var sampleList:[Product]{
        return[
            Product(name: "Macbook air"),
            Product(name: "Macbook Pro")
        ]
    }
}
