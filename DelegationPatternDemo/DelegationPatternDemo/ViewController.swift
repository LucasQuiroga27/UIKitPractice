//
//  ViewController.swift
//  DelegationPatternDemo
//
//  Created by Lucas Quiroga on 21/08/23.
//

import UIKit

class ViewController: UIViewController {
    
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
    
    private lazy var presentViewDemoButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "open ViewControllerDemo"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { [weak self] _ in
            self?.didTapOnOpenViewDemoButton()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(demolabel)
        view.addSubview(acceptButton)
        view.addSubview(presentViewDemoButton)
        apiClient.delegate = self
        
        NSLayoutConstraint.activate([
            demolabel.bottomAnchor.constraint(equalTo: acceptButton.topAnchor, constant: -32),
            demolabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            demolabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            acceptButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            acceptButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            presentViewDemoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            presentViewDemoButton.centerYAnchor.constraint(equalTo: acceptButton.bottomAnchor, constant: 32)
            
        ])
    }
    
    func didTapOnAcceptButton() {
        apiClient.getPokemons()
    }
    func didTapOnOpenViewDemoButton() {
        present(ViewControllerDemo(), animated: true)
    }
}

extension ViewController: APIClientDelegate {
    func update(pokemons: PokemonResponseDataModel) {
        DispatchQueue.main.async {
            self.demolabel.text = pokemons.pokemons.randomElement()?.name
        }
    }
}

