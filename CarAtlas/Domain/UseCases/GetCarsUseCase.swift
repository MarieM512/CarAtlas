//
//  GetCarsUseCase.swift
//  CarAtlas
//
//  Created by Marie M on 31/08/2024.
//

import Foundation

class GetCarsUseCase {
    private let repository: CarRepository
    
    init(repository: CarRepository) {
        self.repository = repository
    }
    
    func executeAPI(completion: @escaping(Result<CarMakes, Error>) -> Void) {
        repository.fetchCarsFromAPI(completion: completion)
    }
}
