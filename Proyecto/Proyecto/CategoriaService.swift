//
//  CategoriaService.swift
//  Proyecto
//
//  Created by DAMII on 15/12/24.
//

import Foundation
import Alamofire

class CategoriaService {
    static let shared = CategoriaService()
    
    private let baseURL = "https://api.escuelajs.co/api/v1/categories"
    
    func fetchCategoria() async throws -> [Categoria] {
        try await withCheckedThrowingContinuation{ conuation in
            AF.request(baseURL)
                .validate()
                .responseDecodable(of: [Categoria].self) { response in
                    switch response.result {
                    case .success(let users):
                        conuation.resume(returning: users)
                    case .failure(let error):
                        conuation.resume(throwing: error)
                    }
                }
        }
    }
    
}
