//
//  CarModelsDataSource.swift
//  CarAtlas
//
//  Created by Marie M on 01/09/2024.
//

import Foundation

class CarModelsDataSource {
    private let apiClient: APIClient
    
    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }
    
    func fetchCarModels(carName: String, completion: @escaping (Result<CarModelsData, Error>) -> Void) {
        let url = URL(string: "https://vpic.nhtsa.dot.gov/api/vehicles/getmodelsformake/\(carName)?format=json")!
        apiClient.fetchData(from: url, completion: completion)
    }
}
