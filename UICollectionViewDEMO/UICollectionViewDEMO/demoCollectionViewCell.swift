//
//  demoCollectionViewCell.swift
//  UICollectionViewDEMO
//
//  Created by Lucas Quiroga on 24/07/23.
//

import UIKit

class demoCollectionViewCell: UICollectionViewCell {
    
    private let demoStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.layer.borderColor = UIColor.black.cgColor
        stackView.layer.borderWidth = 1
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let productImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let productNameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect){
        super.init(frame: .zero)
        
        addSubview(demoStackView)
        demoStackView.addArrangedSubview(productImageView)
        demoStackView.addArrangedSubview(productNameLabel)
        
        NSLayoutConstraint.activate([
            demoStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            demoStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            demoStackView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(model: Product){
        productImageView.image = UIImage(systemName: model.imageName)
        productNameLabel.text = model.title
    }
    
}
