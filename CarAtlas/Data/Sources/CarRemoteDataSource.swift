//
//  CarRemoteDataSource.swift
//  CarAtlas
//
//  Created by Marie M on 31/08/2024.
//

import Foundation

class CarRemoteDataSource {
    private let apiClient: APIClient
    private let url = URL(string: "https://carapi.app/api/makes")!
    
    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }
    
    func fetchCarMakes(completion: @escaping (Result<CarMakes, Error>) -> Void) {
        apiClient.fetchData(from: url, completion: completion)
    }
}
