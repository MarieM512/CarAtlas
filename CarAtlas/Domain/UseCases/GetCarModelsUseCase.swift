//
//  GetCarDetailsUseCase.swift
//  CarAtlas
//
//  Created by Marie M on 01/09/2024.
//

import Foundation

class GetCarModelsUseCase {
    private let repository: CarModelsRepository
    
    init(repository: CarModelsRepository) {
        self.repository = repository
    }
    
    func execute(carName: String, completion: @escaping (Result<CarModelsData, Error>) -> Void) {
        repository.execute(carName: carName, completion: completion)
    }
}
