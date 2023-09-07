//
//  ListOfCharacterTableViewDelegate.swift
//  ArquitectureMVC_DEMO
//
//  Created by Lucas Quiroga on 6/09/23.
//

import Foundation
import UIKit

class ListOfCharacterTableViewDelegate: NSObject, UITableViewDelegate {
    
    var didTapOnCell: ((Int) -> Void)?
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didTapOnCell?(indexPath.row)
    }
}
