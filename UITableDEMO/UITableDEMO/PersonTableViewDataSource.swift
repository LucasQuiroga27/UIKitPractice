//
//  PersonTableViewDataSource.swift
//  UITableDEMO
//
//  Created by Lucas Quiroga on 17/07/23.
//

import Foundation

import UIKit

let persondata = [
    Person(name: "Lucas", lastname: "Quiroga Llanos", dni: 72987381, imageName: "person.circle"),
    Person(name: "Sebastian", lastname: "Llanos", dni: 73987381, imageName: "person.circle"),
    Person(name: "Jaime", lastname: "Quiroga", dni: 75984381, imageName: "person.circle"),
    Person(name: "Roberto", lastname: "Quiroga Llanos", dni: 72935381, imageName: "person.circle")
]

let managers = [
    Person(name: "Lucas", lastname: "Quiroga", dni: 72987385, imageName: "arrow.up.and.person.rectangle.portrait"),
    Person(name: "Roberto", lastname: "Llanos", dni: 72935387, imageName: "arrow.up.and.person.rectangle.portrait")
]

let allmyPerson = [persondata, managers]

final class PersonTableViewDataSource: NSObject, UITableViewDataSource {
    
    private let datasource: [[Person]]
    
    init(datasource: [[Person]]) {
        self.datasource = datasource
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        datasource.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        datasource[section].count //número de elementos que quemos mostrar
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCustomViewCell", for: indexPath) as! PersonCustomViewCell
        
        let model = datasource[indexPath.section][indexPath.row] // obtenemos el primer registro
        cell.configure(model: model)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Person List"
        }
        else {
            return "managers"
        }
    }
}
