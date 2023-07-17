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

let persondata = [
    Person(name: "Lucas", lastname: "Quiroga Llanos", dni: 72987381, imageName: "person.circle"),
    Person(name: "Sebastian", lastname: "Llanos", dni: 73987381, imageName: "person.circle"),
    Person(name: "Jaime", lastname: "Quiroga", dni: 75984381, imageName: "person.circle"),
    Person(name: "Roberto", lastname: "Quiroga Llanos", dni: 72935381, imageName: "person.circle")
]

class ViewController: UIViewController, UITableViewDataSource {

    private let demoTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        demoTableView.backgroundColor = .systemGreen
        demoTableView.dataSource = self
        demoTableView.register(UITableViewCell.self, forCellReuseIdentifier: "celdasPersona") // agregando identificador y pasando el table view cell
        demoTableView.register(PersonCustomViewCell.self, forCellReuseIdentifier: "PersonCustomViewCell") //pasarle la nueva clase creada
        view.addSubview(demoTableView)
        
        NSLayoutConstraint.activate([
            demoTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            demoTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            demoTableView.topAnchor.constraint(equalTo: view.topAnchor),
            demoTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persondata.count //número de elementos que quemos mostrar
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCustomViewCell", for: indexPath) as! PersonCustomViewCell
        
        let model = persondata[indexPath.row] // obtenemos el primer registro
        cell.configure(model: model)
        
        return cell
        
    }


}

