//
//  CarModelsViewModel.swift
//  CarAtlas
//
//  Created by Marie M on 01/09/2024.
//

import Foundation

class CarModelsViewModel: ObservableObject {
    @Published var carModels: [CarModels] = []
    @Published var errorMessage: ErrorWrapper?
    
    private let getCarModelsUseCases: GetCarModelsUseCase
    
    init(carModels: [CarModels], errorMessage: ErrorWrapper? = nil, getCarModelsUseCases: GetCarModelsUseCase) {
        self.carModels = carModels
        self.errorMessage = errorMessage
        self.getCarModelsUseCases = getCarModelsUseCases
    }
    
    func loadCarModels(carName: String) {
        getCarModelsUseCases.execute(carName: carName) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let models):
                    self?.carModels = models.results
                case .failure(let error):
                    self?.errorMessage = ErrorWrapper(message: error.localizedDescription)
                }
            }
        }
    }
}
