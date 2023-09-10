//
//  CharacterDetailModalCoordinator.swift
//  ArquitectureMVC_DEMO
//
//  Created by Lucas Quiroga on 9/09/23.
//

import Foundation
import UIKit

class CharacterDetailModalCoordinator: Coordinator {
    
    let characterModel: CharacterModel
    var viewController: UIViewController?
    
    init(viewController: UIViewController?, characterModel: CharacterModel){
        self.viewController = viewController
        self.characterModel = characterModel
    }
    
    func start() {
        let characterDetailViewController = CharacterDetailViewController(characterDetailModel: characterModel)
        viewController?.present(characterDetailViewController, animated: true)
    }
    
}

