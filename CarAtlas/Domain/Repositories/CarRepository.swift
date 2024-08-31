//
//  CarRepository.swift
//  CarAtlas
//
//  Created by Marie M on 31/08/2024.
//

import Foundation

protocol CarRepository {
    func fetchCarsFromAPI(completion: @escaping (Result<CarMakes, Error>) -> Void)
}
