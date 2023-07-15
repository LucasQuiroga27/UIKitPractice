//
//  ViewController.swift
//  UIbuttonDemo
//
//  Created by Lucas Quiroga on 14/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let swiftButton1: UIButton = {
        
        var configuration = UIButton.Configuration.filled()
        configuration.title = "Únete a nuestro equipo"
        configuration.subtitle = "Desarrollemos cosas increíbles"
        configuration.image = UIImage(systemName: "arrowshape.right")
        
        let button = UIButton(type: .system)
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let swiftButton2: UIButton = {
        
        var configuration = UIButton.Configuration.bordered() // cambiamos el style del btn
        configuration.title = "Únete con nosotros"
        configuration.titleAlignment = .center
        configuration.subtitle = "Desarrollemos cosas increíbles"
        configuration.image = UIImage(systemName: "arrowshape.right")
        configuration.imagePadding = 12
        configuration.imagePlacement = .trailing
        
        let button = UIButton(type: .system)
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let swiftButton3: UIButton = {
        
        var configuration = UIButton.Configuration.bordered() // cambiamos el style del btn
        configuration.title = "Peligro"
        configuration.titleAlignment = .center
        configuration.subtitle = "Desarrollemos cosas increíbles"
        configuration.image = UIImage(systemName: "arrowshape.right")
        configuration.imagePadding = 12
        configuration.imagePlacement = .top
        configuration.buttonSize = .large
        configuration.baseBackgroundColor = .systemRed
        configuration.baseForegroundColor = .white
        
        let button = UIButton(type: .system)
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var swiftButton4: UIButton = {
        
        var configuration = UIButton.Configuration.bordered() // cambiamos el style del btn
        configuration.title = "Cuidado"
        configuration.titleAlignment = .center
        configuration.subtitle = "Desarrollemos cosas increíbles"
        configuration.image = UIImage(systemName: "arrowshape.right")
        configuration.imagePadding = 12
        configuration.imagePlacement = .top
        configuration.buttonSize = .large
        configuration.baseBackgroundColor = .systemYellow
        configuration.baseForegroundColor = .white
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.showMessage()
        }))
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(swiftButton1)
        view.addSubview(swiftButton2)
        view.addSubview(swiftButton3)
        view.addSubview(swiftButton4)
        
        NSLayoutConstraint.activate([
            swiftButton1.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            swiftButton1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            swiftButton2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftButton2.topAnchor.constraint(equalTo: swiftButton1.bottomAnchor , constant: 10),
            
            swiftButton3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftButton3.topAnchor.constraint(equalTo: swiftButton2.bottomAnchor , constant: 10),
            
            swiftButton4.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftButton4.topAnchor.constraint(equalTo: swiftButton3.bottomAnchor , constant: 10)
            
        ])
        
    }
    
    func showMessage(){
        print("te dije que no lo presiones :/")
    }


}

