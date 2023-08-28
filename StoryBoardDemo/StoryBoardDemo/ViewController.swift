//
//  ViewController.swift
//  StoryBoardDemo
//
//  Created by Lucas Quiroga on 27/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var demobutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapButton(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController2 = storyboard.instantiateViewController(withIdentifier: "ViewController2_id")
        self.present(viewController2, animated: true)
        
    }
    
    
}

