//
//  ViewController.swift
//  ChildViewControllerDEMO
//
//  Created by Lucas Quiroga on 3/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var buttonRequestDEMO: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Click me", for: .normal)
        button.addTarget(self, action: #selector(executeHTTP), for: .touchDown)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(buttonRequestDEMO)
        
        NSLayoutConstraint.activate([
            buttonRequestDEMO.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonRequestDEMO.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20)
        ])
        
    }
    
    @objc
    func executeHTTP(){
        
        let activityIndicatorViewController = ActivityIndicatorViewController()
        
        view.addSubview(activityIndicatorViewController.view)
        addChild(activityIndicatorViewController)
        activityIndicatorViewController.didMove(toParent: self)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4){
            
            activityIndicatorViewController.willMove(toParent: nil)
            activityIndicatorViewController.removeFromParent()
            activityIndicatorViewController.view.removeFromSuperview()
            
        }
    }


}

