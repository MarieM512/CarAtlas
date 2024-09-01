//
//  CarModels.swift
//  CarAtlas
//
//  Created by Marie M on 01/09/2024.
//

import Foundation

struct CarModels: Identifiable, Decodable {
    let id: Int
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case id = "Model_ID"
        case name = "Model_Name"
    }
}
