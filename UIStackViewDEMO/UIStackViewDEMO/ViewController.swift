//
//  ViewController.swift
//  UIStackViewDEMO
//
//  Created by Lucas Quiroga on 21/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let demoLabelTitle: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Courses📚"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 32)
       return label
    }()
    
    private let demoStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(demoLabelTitle)
        view.addSubview(demoStackView)
        
        NSLayoutConstraint.activate([
            
            demoLabelTitle.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 32),
            demoLabelTitle.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            demoLabelTitle.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            demoStackView.topAnchor.constraint(equalTo: demoLabelTitle.bottomAnchor,constant: 22),
            demoStackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            demoStackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        ])
        
        ["800","2400","2600","4200","5000"].forEach { price in
            let button = UIButton(type: .system)
            var configuration = UIButton.Configuration.borderedTinted()
            configuration.title = "precio"
            configuration.subtitle = "Comprar"
            configuration.image = UIImage(systemName: "eurosign.circle.fill")
            configuration.imagePadding = 10
            configuration.baseBackgroundColor = .systemBlue
            button.configuration = configuration
            
            demoStackView.addArrangedSubview(button)
            
        }
        
    }


}

