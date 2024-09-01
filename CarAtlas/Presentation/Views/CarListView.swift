//
//  CarListView.swift
//  CarAtlas
//
//  Created by Marie M on 31/08/2024.
//

import SwiftUI

struct CarListView: View {
    @ObservedObject var viewModel: CarListViewModel
    @EnvironmentObject var environment: AppEnvironment
    
    var body: some View {
        NavigationView {
            List(viewModel.carMakes) { carMakes in
                NavigationLink {
                    CarModelsView(viewModel: CarModelsViewModel(carModels: [], getCarModelsUseCases: environment.getCarModelsUseCase), carName: carMakes.name.lowercased())
                } label: {
                    Text(carMakes.name)
                }
            }
            .navigationTitle("Car Makes")
            .onAppear {
                viewModel.loadCarMakes()
            }
            .alert(item: $viewModel.errorMessage) { errorWrapper in
                Alert(title: Text("Error"), message: Text(errorWrapper.message), dismissButton: .default(Text("OK")))
            }
        }
    }
}

//#Preview {
//    CarListView()
//}
