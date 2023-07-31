//
//  ViewController.swift
//  NavigationPushDEMO
//
//  Created by Lucas Quiroga on 30/07/23.
//

import UIKit

class ViewControllerA: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .green
        
        title = "ViewController A"
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .done, target: self, action: #selector(nextViewController))
        
    }
    
    @objc
    private func nextViewController(){
        self.navigationController?.pushViewController(ViewControllerB(), animated: true)
    }


}

