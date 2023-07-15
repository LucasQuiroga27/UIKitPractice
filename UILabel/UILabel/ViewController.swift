//
//  ViewController.swift
//  UILabel
//
//  Created by Lucas Quiroga on 14/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let swiftUILabeldemo1: UILabel = {
       let label = UILabel()
        label.text = "Bienvenido al Sistema"
        label.font = UIFont(name: "Arial Rounded MT Bold", size: 26)
        label.textAlignment = .center
        label.textColor = .purple
        label.translatesAutoresizingMaskIntoConstraints = false
       return label
    }()
    
    private let swiftUILabeldemo2: UILabel = {
       let label = UILabel()
        label.text = "Nos da mucho gusto que estés aquí revisando mis aprendizajes:D"
        label.font = .systemFont(ofSize: 18)
        label.textAlignment = .justified
        label.textColor = .systemRed
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
       return label
    }()
    
    private let swiftUILabeldemo3: UILabel = {
       let text = "Nos da mucho gusto que estés aquí revisando mis aprendizajes:D"
        let atributtedText: [NSAttributedString.Key: Any] = [
            .underlineStyle: NSUnderlineStyle.single.rawValue,
            .underlineColor: UIColor.red,
            .foregroundColor: UIColor.white,
            .backgroundColor: UIColor.systemYellow,
            .font: UIFont.systemFont(ofSize: 28)
        ]
        
        let atributtedString = NSAttributedString(string: text, attributes: atributtedText)
        
        let label = UILabel()
        label.attributedText = atributtedString
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
       return label
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(swiftUILabeldemo1)
        view.addSubview(swiftUILabeldemo2)
        view.addSubview(swiftUILabeldemo3)
        
        NSLayoutConstraint.activate([
            swiftUILabeldemo1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftUILabeldemo1.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            
            swiftUILabeldemo2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftUILabeldemo2.topAnchor.constraint(equalTo: swiftUILabeldemo1.bottomAnchor, constant: 15),
            swiftUILabeldemo2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            swiftUILabeldemo2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            
            swiftUILabeldemo3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftUILabeldemo3.topAnchor.constraint(equalTo: swiftUILabeldemo2.bottomAnchor, constant: 15),
            swiftUILabeldemo3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            swiftUILabeldemo3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32)
            
        ])
        
    }


}

