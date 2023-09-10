//
//  MainCoordinator.swift
//  ArquitectureMVC_DEMO
//
//  Created by Lucas Quiroga on 7/09/23.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let listOfCharactersViewController = storyBoard.instantiateViewController(withIdentifier: "CharacterListViewController")
        
        navigationController?.pushViewController(listOfCharactersViewController, animated: true)
    }
}
