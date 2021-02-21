//
//  SetGameApp.swift
//  SetGame
//
//  Created by Heba on 14/02/2021.
//

import SwiftUI

@main
struct SetGameApp: App {
    var body: some Scene {
        WindowGroup {
            let setModel = SetModel()
            ContentView(setModel: setModel)
        }
    }
}
