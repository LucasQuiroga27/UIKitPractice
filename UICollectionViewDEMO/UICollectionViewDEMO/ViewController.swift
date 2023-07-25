//
//  ViewController.swift
//  UICollectionViewDEMO
//
//  Created by Lucas Quiroga on 24/07/23.
//

import UIKit

struct Product {
    let title: String
    let imageName: String
}

let Home = [
    Product(title: "Macbook PRO", imageName: "macpro.gen3"),
    Product(title: "Laptop", imageName: "laptopcomputer"),
    Product(title: "Apple TV", imageName: "appletv"),
    Product(title: "Pantallas", imageName: "display.2"),
    Product(title: "Macbook PRO", imageName: "macpro.gen3"),
    Product(title: "Laptop", imageName: "laptopcomputer"),
    Product(title: "Apple TV", imageName: "appletv"),
    Product(title: "Pantallas", imageName: "display.2"),
    Product(title: "Macbook PRO", imageName: "macpro.gen3"),
    Product(title: "Laptop", imageName: "laptopcomputer"),
    Product(title: "Apple TV", imageName: "appletv"),
    Product(title: "Pantallas", imageName: "display.2"),
    Product(title: "Macbook PRO", imageName: "macpro.gen3"),
    Product(title: "Laptop", imageName: "laptopcomputer"),
    Product(title: "Apple TV", imageName: "appletv"),
    Product(title: "Pantallas", imageName: "display.2")
]

class ViewController: UIViewController, UICollectionViewDataSource {
    
    private let demoCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = .init(width:200, height: 60)
        //layout.minimumLineSpacing = 100
        //layout.minimumInteritemSpacing = 200
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        demoCollectionView.backgroundColor = .blue
        demoCollectionView.dataSource = self
        demoCollectionView.register(demoCollectionViewCell.self, forCellWithReuseIdentifier: "demoCollectionViewCell")
        view.addSubview(demoCollectionView)
        
        NSLayoutConstraint.activate([
            demoCollectionView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            demoCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            demoCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            demoCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        Home.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "demoCollectionViewCell", for: indexPath) as! demoCollectionViewCell
        cell.backgroundColor = .red
        
        let model = Home[indexPath.row]
        
        cell.configure(model: model)
        
        return cell
    }


}

