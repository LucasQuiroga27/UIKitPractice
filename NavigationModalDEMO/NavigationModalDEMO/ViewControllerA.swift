//
//  ViewController.swift
//  NavigationModalDEMO
//
//  Created by Lucas Quiroga on 25/07/23.
//

import UIKit

class ViewControllerA: UIViewController {
    
    private lazy var demoButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "View Controller A"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.startNavigation()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        view.addSubview(demoButton)
        
        NSLayoutConstraint.activate([
            demoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            demoButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    func startNavigation(){
        present(ViewControllerB(), animated: true)
    }


}

