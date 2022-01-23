import UIKit
import Foundation
//var randomInt = Int.random(in: 1...4)
//print(randomInt)
//print(randomInt)
//
//
//var album = ["aa", "bb", "cc"]
//album.shuffle()
//
//let shuffle = album.shuffled()
//print("Random is \(shuffle)")
struct quote_struct {
    let content : String
    let name : String
}

let quotes = [
    quote_struct(content: "죽음을 두려워하지", name: "벤다이트"),
    quote_struct(content: "나는 나자신", name: "비룡"),
    quote_struct(content: "편견이란", name: "암스로스빌")
]

var text = quotes[1]
var a = text.content
