//
//  Interactor.swift
//  VIPERDocument
//
//  Created by Tayyip Çakmak on 22.09.2021.
//

protocol InteractorProtocol {
    func getTitle() -> Entity
}

class Interactor {
    
}

extension Interactor: InteractorProtocol {
    func getTitle() -> Entity {
        return Entity(title: "Hello VIPER")
    }
    
    
}

