//
//  ViewController.swift
//  CicleViewControllerDemo
//
//  Created by Lucas Quiroga on 28/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    deinit{
        print("liberando recursos")
    }
    
    private lazy var demoButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.title = "Hello world"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { [weak self] action in
            
            self?.presentViewControllerDemo()
        }))
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configuration = configuration
        return button
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        print("1. viewDidLoad \(self.description)")
        
        view.addSubview(demoButton)
        
        view.backgroundColor = [ .systemRed, .systemCyan, .systemBlue, .systemGray ].randomElement()
        
        NSLayoutConstraint.activate([
            demoButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            demoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func presentViewControllerDemo(){
        self.present(ViewController(), animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("2. viewWillAppear \(self.description)")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("3. viewWillLayoutSubviews \(self.description)")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("4. viewDidLayoutSubviews \(self.description)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("5. viewDidAppear \(self.description)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("6. viewWillDisappear \(self.description)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("7. viewDidDisappear \(self.description)")
    }


}

