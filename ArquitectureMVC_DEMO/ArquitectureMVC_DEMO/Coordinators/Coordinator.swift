//
//  Coordinator.swift
//  ArquitectureMVC_DEMO
//
//  Created by Lucas Quiroga on 7/09/23.
//

import Foundation
import UIKit

protocol Coordinator {
    var viewController: UIViewController? { get }
    var navigationController: UINavigationController? { get }
    
    func start()
}

extension Coordinator {
    var viewController: UIViewController? { nil }
    var navigationController: UINavigationController? { nil }
}
