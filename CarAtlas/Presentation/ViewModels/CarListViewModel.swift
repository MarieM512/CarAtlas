//
//  CarListViewModel.swift
//  CarAtlas
//
//  Created by Marie M on 31/08/2024.
//

import Foundation

class CarListViewModel: ObservableObject {
    @Published var carMakes: [Car] = []
    @Published var errorMessage: ErrorWrapper?
    
    private let getCarMakesUseCases: GetCarsUseCase
    
    init(getCarMakesUseCases: GetCarsUseCase) {
        self.getCarMakesUseCases = getCarMakesUseCases
    }
    
    func loadCarMakes() {
        getCarMakesUseCases.executeAPI { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let carMakes):
                    self?.carMakes = carMakes.data
                case .failure(let error):
                    self?.errorMessage = ErrorWrapper(message: error.localizedDescription)
                }
            }
        }
    }
}
