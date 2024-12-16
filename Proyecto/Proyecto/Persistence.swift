//
//  Persistence.swift
//  Proyecto
//
//  Created by DAMII on 15/12/24.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    let container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "Proyecto")
        container.loadPersistentStores { _, error in
            if let er = error as NSError? {
                fatalError("Error al conectarse a la BD, \(er)")
            }
        }
    }
}
