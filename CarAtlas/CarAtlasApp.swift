//
//  CarAtlasApp.swift
//  CarAtlas
//
//  Created by Marie M on 31/08/2024.
//

import SwiftUI

@main
struct CarAtlasApp: App {
    var body: some Scene {
        WindowGroup {
            let apiClient = APIClient()
            let remoteDataSource = CarRemoteDataSource(apiClient: apiClient)
            let carRepository = CarRepositoryImpl(remoteDataSource: remoteDataSource)
            let getCarsUseCase = GetCarsUseCase(repository: carRepository)
            let viewModel = CarListViewModel(getCarMakesUseCases: getCarsUseCase)
            
            CarListView(viewModel: viewModel)
        }
    }
}
