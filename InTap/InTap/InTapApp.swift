//
//  InTapApp.swift
//  InTap
//
//  Created by Nicholas Melekian on 2/21/23.
//

import SwiftUI

@main
struct InTapApp: App {
    @StateObject var viewModel = ViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
