//
//  CarRespositoryImpl.swift
//  CarAtlas
//
//  Created by Marie M on 31/08/2024.
//

import Foundation

class CarRepositoryImpl: CarRepository {
    private let remoteDataSource: CarRemoteDataSource
    
    init(remoteDataSource: CarRemoteDataSource) {
        self.remoteDataSource = remoteDataSource
    }
    
    func fetchCarsFromAPI(completion: @escaping (Result<CarMakes, any Error>) -> Void) {
        remoteDataSource.fetchCarMakes(completion: completion)
    }
}
