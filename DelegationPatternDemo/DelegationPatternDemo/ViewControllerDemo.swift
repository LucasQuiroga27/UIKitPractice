//
//  ViewController.swift
//  DelegationPatternDemo
//
//  Created by Lucas Quiroga on 21/08/23.
//

import UIKit

class ViewControllerDemo: UIViewController {
    
    deinit {
        print("hi viewdemo")
    }
    
    let apiClient = APIClient()
    
    private let demolabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.textAlignment = .center
        label.text = "Hello world"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var acceptButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "click me!"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { [weak self] _ in
            self?.didTapOnAcceptButton()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(demolabel)
        view.addSubview(acceptButton)
        apiClient.delegate = self
        
        view.backgroundColor = .systemCyan
        
        NSLayoutConstraint.activate([
            demolabel.bottomAnchor.constraint(equalTo: acceptButton.topAnchor, constant: -32),
            demolabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            demolabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            acceptButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            acceptButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    func didTapOnAcceptButton() {
        apiClient.getPokemons()
    }
}

extension ViewControllerDemo: APIClientDelegate {
    func update(pokemons: PokemonResponseDataModel) {
        DispatchQueue.main.async {
            self.demolabel.text = pokemons.pokemons.randomElement()?.name
        }
    }
}

