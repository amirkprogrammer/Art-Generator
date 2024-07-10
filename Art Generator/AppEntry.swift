//
//  AppEntry.swift
//  Art Generator
//
//  Created by Amir Kabiri on 7/10/24.
//

import SwiftUI

@main
struct AppEntry: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    Task {
                        let sample = GenerationInput(prompt: "Older grey-haired politician taking a nap")
                        if let data = sample.encodedData {
                            try await APIService().fetchImages(with: data)
                        }
                    }
                }
        }
    }
}
