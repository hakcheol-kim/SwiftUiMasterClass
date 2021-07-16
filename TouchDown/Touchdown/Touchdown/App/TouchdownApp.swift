//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by 김학철 on 2021/06/16.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
              .environmentObject(Shop())
        }
    }
}
