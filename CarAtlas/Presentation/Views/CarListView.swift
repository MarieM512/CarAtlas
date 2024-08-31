//
//  CarListView.swift
//  CarAtlas
//
//  Created by Marie M on 31/08/2024.
//

import SwiftUI

struct CarListView: View {
    @ObservedObject var viewModel: CarListViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.carMakes) { carMakes in
                Text(carMakes.name)
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
