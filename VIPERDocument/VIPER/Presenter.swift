//
//  Presenter.swift
//  VIPERDocument
//
//  Created by Tayyip Çakmak on 22.09.2021.
//

protocol PresenterProtocol {
    func viewDidLoad() -> Void 
}

class Presenter {
    
    weak var viewC: ViewProtocol?
    var interactor: InteractorProtocol
    var router: RouterProtocol
    
    init(viewC: ViewProtocol, interactor: InteractorProtocol, router: RouterProtocol) {
        self.viewC = viewC
        self.interactor = interactor
        self.router = router
    }
}

extension Presenter: PresenterProtocol {
    func viewDidLoad() {
        let entity = self.interactor.getTitle()
        print(entity)
        viewC?.updateTitle(title: entity.title)
    }
    
    
}
