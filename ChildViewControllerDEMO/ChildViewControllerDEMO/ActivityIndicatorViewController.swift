//
//  ActivityIndicatorViewController.swift
//  ChildViewControllerDEMO
//
//  Created by Lucas Quiroga on 3/09/23.
//

import UIKit

class ActivityIndicatorViewController: UIViewController {
    
    private let activityIndicatorView: UIActivityIndicatorView = {
        let indicatorView = UIActivityIndicatorView(style: .large)
        indicatorView.color = .white
        indicatorView.translatesAutoresizingMaskIntoConstraints = false
        return indicatorView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray
        
        activityIndicatorView.startAnimating()
        view.addSubview(activityIndicatorView)
        
        NSLayoutConstraint.activate([
            activityIndicatorView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            activityIndicatorView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        
    }
    

}
