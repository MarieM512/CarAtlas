//
//  CarModels.swift
//  CarAtlas
//
//  Created by Marie M on 01/09/2024.
//

import Foundation

struct CarModelsData: Decodable {
    let count: Int
    let results: [CarModels]
    
    enum CodingKeys: String, CodingKey {
        case count = "Count"
        case results = "Results"
    }
}
