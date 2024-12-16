//
//  DetalleArticulo.swift
//  Proyecto
//
//  Created by DAMII on 15/12/24.
//

import SwiftUI

struct DetalleArticuloView : View {
    @Environment(\.managedObjectContext) private var viewContext
    var articulo : Articulo
    @State private var viewForm = false
    
    var body: some View {
        VStack {
            Text(articulo.nombre ?? "Sin nombre")
            Text(articulo.categoria ?? "Sin Categoria")
            Text(articulo.tiendasAsociadas ?? "Sin tiendas")
            Text(articulo.prioridad ? "Alta" : "Baja")
            Text(articulo.estado ? "Comprado" : "Pendiente")
            Text(articulo.notasAdicionales ?? "Sin comentarios")
        }
        .navigationTitle(articulo.nombre ?? "Sin nombre")
        .toolbar{
            ToolbarItem(placement: .cancellationAction) {
                Button("Cancelar") {
                    viewForm = false
                }
            }
        }
        /*
        .swipeActions {
            Button(role: .destructive) {
                eliminarArticulo = articulo
            } label: {
                Label("Eliminar", systemImage: "trash")
            }
        }
        .alert(item: $eliminarArticulo) { articulo in
            Alert(
                title: Text("Eliminar articulo"),
                message: Text("¿Estás seguro de eliminar?"),
                primaryButton: .destructive(Text("Eliminar")) {
                    eliminarArticulo(articulo)
                },
                secondaryButton: .cancel()
            )
        }*/
    }
    /*
    private func actualizarArticulo(_ articulo: Articulo) {
        let newArticulo = Articulo(id: UUID(), nombre: articulo.nombre, cantidad: articulo.cantidad, categoria: articulo.categoria, tienda: articulo.tiendas, prioridad: articulo.prioridad, notasAdicionales: articulo.notasAdicionales)
        //modelo.articulos.append(newArticulo)
        guardarCambios()
    }

    private func guardarCambios() {
        try? viewContext.save()
    }

    private func eliminarArticulo(_ articulo: Articulo) {
        viewContext.delete(articulo)
        guardarCambios()
    }*/
}
