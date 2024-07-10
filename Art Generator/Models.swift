//
//  Models.swift
//  Art Generator
//
//  Created by Amir Kabiri on 7/10/24.
//

import Foundation

enum Constants {
    static let imageSize = "512x512"
    static let n = 2
    static let model = "dall-e-2"
}

struct GenerationInput: Codable {
    var model = Constants.model
    var prompt: String
    var n = Constants.n
    var size = Constants.imageSize
    
    var encodedData: Data? {
        try? JSONEncoder().encode(self)
    }
}
