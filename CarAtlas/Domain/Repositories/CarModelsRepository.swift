//
//  CarModelsRepository.swift
//  CarAtlas
//
//  Created by Marie M on 01/09/2024.
//

import Foundation

protocol CarModelsRepository {
    func execute(carName: String, completion: @escaping (Result<CarModelsData, Error>) -> Void)
}
