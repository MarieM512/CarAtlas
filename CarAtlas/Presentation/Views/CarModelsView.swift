//
//  CarModelsView.swift
//  CarAtlas
//
//  Created by Marie M on 01/09/2024.
//

import SwiftUI

struct CarModelsView: View {
    @ObservedObject var viewModel: CarModelsViewModel
    let carName: String
    
    var body: some View {
        List(viewModel.carModels) { models in
            Text(models.name)
        }
        .navigationTitle("Models of \(carName)")
        .onAppear {
            viewModel.loadCarModels(carName: carName)
        }
        .alert(item: $viewModel.errorMessage) { errorWrapper in
            Alert(title: Text("Error"), message: Text(errorWrapper.message), dismissButton: .default(Text("OK")))
        }
    }
}

//#Preview {
//    CarModelsView()
//}
