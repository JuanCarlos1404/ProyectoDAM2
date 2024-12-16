//
//  ArticuloItemView.swift
//  Proyecto
//
//  Created by DAMII on 15/12/24.
//

import SwiftUI

struct ArticuloItemView : View {
  
    let nombre: String
    let cantidad: Int16
    let prioridad: Bool
    let notasAdicionales: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(nombre)
                    .font(.headline)
                Text(cantidad, format: .number)
            }
            Spacer()
            let textoEstado = prioridad ? "Alta" : "Baja"
            let colorEstado = prioridad ? Color.red : Color.green
            Text(textoEstado)
                .padding(4)
                .background(colorEstado)
                .foregroundColor(.white)
                .cornerRadius(8)
            Spacer()
            VStack(alignment: .leading) {
                Text(notasAdicionales)
                    .font(.subheadline)
            }
        }
        .padding()
    }
}
