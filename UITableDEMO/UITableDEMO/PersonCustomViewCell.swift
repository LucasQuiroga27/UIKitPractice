//
//  PersonCustomViewCell.swift
//  UITableDEMO
//
//  Created by Lucas Quiroga on 16/07/23.
//

import UIKit

class PersonCustomViewCell: UITableViewCell {
    
    private let personImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let personNameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //methods
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(personImageView)
        addSubview(personNameLabel)
        
        NSLayoutConstraint.activate([
            personImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            personImageView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            personImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            personImageView.widthAnchor.constraint(equalToConstant: 40),
            
            personNameLabel.leadingAnchor.constraint(equalTo: personImageView.trailingAnchor, constant: 18),
            personNameLabel.centerYAnchor.constraint(equalTo: personImageView.centerYAnchor)
            
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(model: Person){
        personImageView.image = UIImage(systemName: model.imageName)
        personNameLabel.text = model.name + " " + model.lastname
    }

}
