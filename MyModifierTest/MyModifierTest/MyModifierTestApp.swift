//
//  MyModifierTestApp.swift
//  MyModifierTest
//
//  Created by Chuljin Hwang on 2022/02/02.
//

import SwiftUI

@main
struct MyModifierTestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(demodata: DemoData(userCount: 0, currentCount: 0))
        }
    }
}
