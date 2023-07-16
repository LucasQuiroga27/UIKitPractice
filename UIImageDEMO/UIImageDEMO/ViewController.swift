//
//  ViewController.swift
//  UIImageDEMO
//
//  Created by Jamer Quiroga on 14/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let imageViewSwiftDemo1: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "gamecontroller.fill")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .red
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.layer.cornerRadius = 150 //diagonal del bordeado
        imageView.layer.borderWidth = 10
        imageView.layer.borderColor = UIColor.black.cgColor
        return imageView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageViewSwiftDemo1)
        
        NSLayoutConstraint.activate([
            imageViewSwiftDemo1.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            imageViewSwiftDemo1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageViewSwiftDemo1.widthAnchor.constraint(equalToConstant: 300),
            imageViewSwiftDemo1.heightAnchor.constraint(equalToConstant: 300)
        ])
    }


}

