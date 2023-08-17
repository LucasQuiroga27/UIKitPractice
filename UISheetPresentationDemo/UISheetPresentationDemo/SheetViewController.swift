//
//  SheetViewController.swift
//  UISheetPresentationDemo
//
//  Created by Lucas Quiroga on 6/08/23.
//

import UIKit

class SheetViewController: UIViewController {
    private let demolabel: UILabel = {
        let label = UILabel()
        label.text = "Hello world"
        label.font = .systemFont(ofSize: 20)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGreen
        view.addSubview(demolabel)
        
        NSLayoutConstraint.activate([
            demolabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            demolabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        guard let presentationController = presentationController as? UISheetPresentationController else {
            return
        }
        presentationController.detents = [.medium(), .large()]
        presentationController.selectedDetentIdentifier = .medium
        presentationController.prefersGrabberVisible = true
        presentationController.preferredCornerRadius = 20
    }
}
