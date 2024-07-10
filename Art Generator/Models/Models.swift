//
//  Models.swift
//  Art Generator
//
//  Created by Amir Kabiri on 7/10/24.
//

import SwiftUI

enum Constants {
    static let imageSize = "512x512"
    static let n = 4
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

struct DalleImage: Identifiable {
    var id = UUID()
    var uiImage: UIImage?
}

struct ResponseModel: Codable {
    struct Data: Codable {
        let url: URL
    }
    
    let created: Date
    let data: [Data]
}
