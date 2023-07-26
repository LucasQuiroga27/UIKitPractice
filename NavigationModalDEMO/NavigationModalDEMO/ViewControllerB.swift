//
//  ViewControllerB.swift
//  NavigationModalDEMO
//
//  Created by Lucas Quiroga on 25/07/23.
//

import UIKit

class ViewControllerB: UIViewController{
    
    private lazy var dismissDemoButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Dismiss view controller"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.dismissViewControllerB()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(dismissDemoButton)
        
        NSLayoutConstraint.activate([
            dismissDemoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dismissDemoButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
    }
    
    func dismissViewControllerB(){
        dismiss(animated: true)
    }
}
