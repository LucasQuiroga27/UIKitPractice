//
//  ViewController.swift
//  UITableDEMO
//
//  Created by Lucas Quiroga on 16/07/23.
//

import UIKit

struct Person {
    let name: String
    let lastname: String
    let dni: Int
    let imageName: String
}

class ViewController: UIViewController {
    
    private var datasource: PersonTableViewDataSource?
    private var delegate: PersonTableViewDelegate?
    
    override func loadView() {
        let tableView = UITableView()
        self.datasource = PersonTableViewDataSource(datasource: allmyPerson)
        self.delegate = PersonTableViewDelegate()
        tableView.dataSource = datasource
        tableView.delegate = delegate
        tableView.register(PersonCustomViewCell.self, forCellReuseIdentifier: "PersonCustomViewCell") //pasarle la nueva clase creada
        
        view = tableView

    }

}

