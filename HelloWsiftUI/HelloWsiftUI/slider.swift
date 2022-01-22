//
//  slider.swift
//  HelloWsiftUI
//
//  Created by Chuljin Hwang on 2022/01/22.
//

import SwiftUI

struct slider: View {
    @State private var r = 0.0
    @State private var g = 0.0
    @State private var b = 0.0
    var color: Color{
        Color(red:r/255, green: g/255, blue: b/255)
    }
    var body: some View {
        
        VStack{
            Image(systemName: "smiley.fill")
                .resizable()
                .foregroundColor(color)
                .frame(width: 250, height: 250)
            HStack {
                Text("R")
                Slider(value: $r, in: 0 ... 255, step: 1, onEditingChanged: {print($0)},
                       label:{EmptyView()})
                HStack {
                    Spacer()
                    Text("\(Int(r))")
                }
                .frame(width:40)
            }
                .padding()
                .foregroundColor(.red)
            HStack {
                Text("G")
                Slider(value: $g, in: 0 ... 255, step: 1, onEditingChanged: {print($0)},
                       label:{EmptyView()})
                HStack {
                    Spacer()
                    Text("\(Int(g))")
                }
                .frame(width:40)
            }
                .padding()
                .foregroundColor(.green)
            
        //이 슬라이더는 오른쪽 텍스트가 고정이 안되는 문제가 있어 위처럼 수정했어
            Slider(value: $b, in: 0 ... 255, step: 1, onEditingChanged: {print($0)},
                   minimumValueLabel: Text("B"),
                   maximumValueLabel: Text("\(Int(b))"),
                   label:{EmptyView()})
                .padding()
                .foregroundColor(.blue)
        }
    }
}

struct slider_Previews: PreviewProvider {
    static var previews: some View {
        slider()
    }
}
