//
//  ViewControllerC.swift
//  NavigationPushDEMO
//
//  Created by Lucas Quiroga on 30/07/23.
//

import UIKit

class ViewControllerC: UIViewController {
    
    private lazy var modalbutton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Hello world"
        
        let buton  = UIButton(type: .system,primaryAction: UIAction(handler: { _ in
            self.startNavigation()
        }))
        buton.configuration = configuration
        buton.translatesAutoresizingMaskIntoConstraints = false
        return buton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        title = "ViewController C"
        view.addSubview(modalbutton)
        
        NSLayoutConstraint.activate([
            modalbutton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            modalbutton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
    }
    
    func startNavigation(){
        //return viewControllerB
        self.navigationController?.popViewController(animated: true)
        
        //self.navigationController?.popToRootViewController(animated: true) return viewController principal
        
        //self.present(ViewControllerD(), animated: true)
    }
}
