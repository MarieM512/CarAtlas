//
//  AppEnvironment.swift
//  CarAtlas
//
//  Created by Marie M on 01/09/2024.
//

import Foundation

final class AppEnvironment: ObservableObject {
    let getCarModelsUseCase: GetCarModelsUseCase
    
    init() {
        self.getCarModelsUseCase = GetCarModelsUseCase(repository: CarModelsRepositoryImpl(modelsDataSource: CarModelsDataSource(apiClient: APIClient())))
    }
}
