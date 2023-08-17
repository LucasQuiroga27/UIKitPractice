//
//  ViewController.swift
//  UISheetPresentationDemo
//
//  Created by Lucas Quiroga on 6/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var demoButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Open SheetView"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.presentSheetViewController()
        }))
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray
        view.addSubview(demoButton)
        
        NSLayoutConstraint.activate([
            demoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            demoButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
    }
    
    func presentSheetViewController() {
        
        let viewControllerToPresent = SheetViewController()
        
        present(viewControllerToPresent, animated: true)
        
    }


}

