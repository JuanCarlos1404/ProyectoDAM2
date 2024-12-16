//
//  CategoriaModel.swift
//  Proyecto
//
//  Created by DAMII on 15/12/24.
//

import Foundation

@MainActor
class CategoriaModel: ObservableObject {
    @Published var categorias: [Categoria] = []
    @Published var isLoading: Bool = false
    @Published var errorMassege: String?
    
    func requestUser() {
        Task {
            do {
                isLoading = true
                errorMassege = nil
                categorias = try await CategoriaService.shared.fetchCategoria()
            } catch {
                errorMassege = "ocurrio un error: \(error.localizedDescription)"
            }
            isLoading = false
        }
    }
}
