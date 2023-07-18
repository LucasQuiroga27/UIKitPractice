//
//  PersonTableViewDelegate.swift
//  UITableDEMO
//
//  Created by Lucas Quiroga on 17/07/23.
//

import Foundation
import UIKit

final class PersonTableViewDelegate: NSObject, UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = persondata[indexPath.row]
        print("Hola, me presionaste:D -> \(model.name)")
    }
}
