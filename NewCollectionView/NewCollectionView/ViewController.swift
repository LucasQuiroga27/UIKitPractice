//
//  ViewController.swift
//  NewCollectionView
//
//  Created by Lucas Quiroga on 16/08/23.
//

import UIKit

struct Device: Hashable {
    let id: UUID = UUID()
    let title: String
    let imageName: String
}

let home = [
    Device(title: "Laptop", imageName: "laptopcomputer"),
    Device(title: "Apple tv", imageName: "appletv"),
    Device(title: "Mac Pro", imageName: "macpro.gen3"),
    Device(title: "Pantallas", imageName: "display.2"),
    Device(title: "Mac Mini", imageName: "macmini")
]

let home2 = [
    Device(title: "Pantallas", imageName: "display.2"),
    Device(title: "Mac Mini", imageName: "macmini")
]

class ViewController: UIViewController {
    
    lazy var demoCollectionView: UICollectionView = {
        let configuration = UICollectionLayoutListConfiguration(appearance: .insetGrouped)
        let layout = UICollectionViewCompositionalLayout.list(using: configuration)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    lazy var datasource: UICollectionViewDiffableDataSource<Int, Device> = {
        
        let deviceCell = UICollectionView.CellRegistration<UICollectionViewListCell, Device> { cell, indexPath, model in
            var listContentConfiguration = UIListContentConfiguration.cell()
            listContentConfiguration.text = model.title
            listContentConfiguration.image = UIImage(systemName: model.imageName)
            cell.contentConfiguration = listContentConfiguration
        }
        
        let datasource = UICollectionViewDiffableDataSource<Int, Device>(collectionView: demoCollectionView) { collectionView, indexPath, model in
            return collectionView.dequeueConfiguredReusableCell(using: deviceCell, for: indexPath, item: model)
        }
        
        return datasource
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        demoCollectionView.backgroundColor = .systemGray
        view.addSubview(demoCollectionView)
        
        NSLayoutConstraint.activate([
            demoCollectionView.topAnchor.constraint(equalTo: view.topAnchor),
            demoCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            demoCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            demoCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        var snapshot = datasource.snapshot()
        snapshot.appendSections([0, 1])
        snapshot.appendItems(home, toSection: 0)
        snapshot.appendItems(home2, toSection: 1)
        datasource.apply(snapshot)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            snapshot.appendItems([.init(title: "example", imageName: "display.2")], toSection: 1)
            snapshot.appendItems([.init(title: "example 2", imageName: "display.2")], toSection: 1)
            self.datasource.apply(snapshot)
        }
        
            
    }


}

