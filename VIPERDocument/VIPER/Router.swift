//
//  Router.swift
//  VIPERDocument
//
//  Created by Tayyip Çakmak on 22.09.2021.
//
import UIKit
protocol RouterProtocol {
    
}

class Router {
    var viewController: UIViewController
    
    init(viewRouter: UIViewController) {
        self.viewController = viewRouter
    }
}

extension Router: RouterProtocol {
    
}
