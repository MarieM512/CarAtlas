//
//  CarModelsRepositoryImpl.swift
//  CarAtlas
//
//  Created by Marie M on 01/09/2024.
//

import Foundation

class CarModelsRepositoryImpl: CarModelsRepository {
    private let modelsDataSource: CarModelsDataSource
    
    init(modelsDataSource: CarModelsDataSource) {
        self.modelsDataSource = modelsDataSource
    }
    
    func execute(carName: String, completion: @escaping (Result<CarModelsData, any Error>) -> Void) {
        modelsDataSource.fetchCarModels(carName: carName, completion: completion)
    }
}
