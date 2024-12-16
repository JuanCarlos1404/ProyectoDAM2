//
//  FormularioArticuloView.swift
//  Proyecto
//
//  Created by DAMII on 15/12/24.
//

import SwiftUI

struct FormularioArticuloView : View {
    @Environment(\.managedObjectContext) private var viewContext
    @Binding var mostrarFormulario: Bool
    
    @StateObject private var viewModel = CategoriaModel()
    
    @State private var nombre: String = ""
    @State private var cantidad: Int16 = 0
    @State private var categoria: String = ""
    @State private var tiendasAsociadas: String = ""
    @State private var prioridad: String = ""
    @State private var notasAdicionales: String = ""
    
    var body: some View {
        Form {
            Section (header: Text("Formulario de registro de articulo")) {
                TextField(placeholder: "Nombre", text: $nombre)
                TextField(placeholder: "Cantidad", text: $cantidad, format: .number)
                Picker("Selecciona una opción", selection: $categoria) {
                    ForEach(viewModel.categorias, id: \.self) { item in
                        Text(item.nombre)
                    }
                }
                .pickerStyle(.menu)
                
                TextField(placeholder: "Tiendas Asociadas", text: $tiendasAsociadas)
                TextField(placeholder: "Prioridad", text: $prioridad)
                TextField(placeholder: "Notas Adicionales", text: $notasAdicionales)
            }
            Button("Guardar") {
                crearArticulo()
            }
        }
        .navigationBarTitle("Formulario de Registro de Articulo")
        .toolbar {
            ToolbarItem(placement: .cancellationAction) {
                Button("Cancelar") {
                    mostrarFormulario = false
                }
            }
        }
    }
    
    private func crearArticulo() {
        let nuevoArticulo = Articulo(context: viewContext)
        nuevoArticulo.id = UUID()
        nuevoArticulo.nombre = nombre
        nuevoArticulo.cantidad = cantidad
        nuevoArticulo.categoria = categoria
        nuevoArticulo.tiendasAsociadas = tiendasAsociadas
        nuevoArticulo.prioridad = false
        nuevoArticulo.notasAdicionales = notasAdicionales
        nuevoArticulo.estado = false
        try? viewContext.save()
        mostrarFormulario = false
    }
}
