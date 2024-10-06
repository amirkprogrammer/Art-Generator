//
//  Models.swift
//  Art Generator
//
//  Created by Amir Kabiri on 10/4/24.
//

import SwiftUI

enum Constants {
    static let imageSize = "256x256"
    static let n = 4
}

struct GenerationInput: Codable {
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
        var url: URL
    }
    
    let created: Date
    let data: [Data]
}
