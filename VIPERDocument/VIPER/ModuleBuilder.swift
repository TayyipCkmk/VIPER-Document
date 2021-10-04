//
//  ModuleBuilder.swift
//  VIPERDocument
//
//  Created by Tayyip Çakmak on 22.09.2021.
//

import UIKit

class ModuleBuilder {
    
    static func build() -> UIViewController {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        let interactor = Interactor()
        let router = Router(viewRouter: view)
        let presenterC = Presenter(viewC: view, interactor: interactor, router: router)
        view.presenter = presenterC
        return view
    }
}
