//
//  Art_GeneratorApp.swift
//  Art Generator
//
//  Created by Amir Kabiri on 10/4/24.
//

import SwiftUI

@main
struct AppEntry: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    print(Bundle.main.infoDictionary?["API_KEY"] as? String)
                }
        }
    }
}
