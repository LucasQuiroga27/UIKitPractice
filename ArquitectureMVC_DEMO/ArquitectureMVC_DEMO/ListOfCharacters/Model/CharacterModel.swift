//
//  CharacterModel.swift
//  ArquitectureMVC_DEMO
//
//  Created by Lucas Quiroga on 6/09/23.
//

import Foundation

struct CharacterModel: Decodable {
    let name: String
    let status: String
    let species: String
    let image: String
}
