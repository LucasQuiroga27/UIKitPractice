//
//  ViewController.swift
//  UIKitAnimationsDEMO
//
//  Created by Lucas Quiroga on 1/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    let viewDemo: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray
        return view
    }()

    var centerYConstrain: NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(viewDemo)
        
        centerYConstrain = viewDemo.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        NSLayoutConstraint.activate([
            viewDemo.heightAnchor.constraint(equalToConstant: 200),
            viewDemo.widthAnchor.constraint(equalToConstant: 200),
            centerYConstrain!,
            viewDemo.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1 ){
            self.animateConstraint()
        }
        
    }
    
    func animateConstraint() {
        UIView.animate(withDuration: 2) {
            self.centerYConstrain?.constant = -200
            self.view.layoutIfNeeded()
        }
    }


}

