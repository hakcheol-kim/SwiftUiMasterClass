//
//  Persistence.swift
//  Devote
//
//  Created by 김학철 on 2021/06/17.
//

import CoreData

struct PersistenceController {
    //MARK: - 1. persistent controller
    static let shared = PersistenceController()
    
    // MARK: - 2. Persistent container
    let container: NSPersistentContainer

    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "Devote")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
    
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
    }
    
    static var preview: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        for i in 0..<5 {
            let newItem = Item(context: viewContext)
            newItem.id = UUID()
            newItem.task = "Sample task No\(i)"
            newItem.completion = false
            newItem.timestamp = Date()
        }
        do {
            try viewContext.save()
        } catch {
         let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        return result
    }()


}
