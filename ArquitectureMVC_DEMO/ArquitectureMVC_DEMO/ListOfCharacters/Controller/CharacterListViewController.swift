//
//  ViewController.swift
//  ArquitectureMVC_DEMO
//
//  Created by Lucas Quiroga on 6/09/23.
//

import UIKit

class CharacterListViewController: UIViewController {
    
    var mainView: CharacterListView { self.view as! CharacterListView }
    let apiClient = ListOfCharactersAPIClient()
    private var tableViewDataSource: ListOfCharactersTableViewDataSource?
    private var tableViewDelegate: ListOfCharacterTableViewDelegate?
    
    //var characterDetailCoordinator: CharacterDetailPushCoordinator?
    
    var characterDetailCoordinator: CharacterDetailModalCoordinator?
    
    override func loadView() {
        view = CharacterListView()
        tableViewDelegate = ListOfCharacterTableViewDelegate()
        
        tableViewDataSource = ListOfCharactersTableViewDataSource(tableView: mainView.charactersTableView)
        mainView.charactersTableView.dataSource = tableViewDataSource
        mainView.charactersTableView.delegate = tableViewDelegate

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewDelegate?.didTapOnCell = { [weak self] index in
            
            print("Index \(index)")
            
            guard let dataSource = self?.tableViewDataSource else {
                return
            }
            
            /*
                let characterModel = dataSource.characters[index]
                let characterDetailViewController = CharacterDetailViewController(characterDetailModel: characterModel)
                self?.present(characterDetailViewController, animated: true)
             */
            
            let characterModel = dataSource.characters[index]
            /* self?.characterDetailCoordinator = CharacterDetailPushCoordinator(navigationController: self?.navigationController, characterModel: characterModel) */
            
            self?.characterDetailCoordinator = CharacterDetailModalCoordinator(viewController: self, characterModel: characterModel)
            
            self?.characterDetailCoordinator?.start()
            
        }
        
        Task {
            let characters = await apiClient.getListOfCharacters()
            print("Characters \(characters)")
            tableViewDataSource?.set(characters: characters.results)
        }
    }


}

