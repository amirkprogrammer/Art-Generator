//
//  Models.swift
//  Art Generator
//
//  Created by Amir Kabiri on 10/4/24.
//

import Foundation

enum Constants {
    static let imageSize = "256x256"
    static let n = 2
}

struct GenerationInput: Codable {
    var prompt: String
    var n = Constants.n
    var size = Constants.imageSize
    
    var encodedData: Data? {
        try? JSONEncoder().encode(self)
    }
}
