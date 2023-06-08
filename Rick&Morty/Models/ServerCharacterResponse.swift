//
//  ServerCharacterResponse.swift
//  Rick&Morty
//
//  Created by Eren Erten on 8.06.2023.
//

import Foundation

struct ServerCharacterResponse: Codable {
    
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: ServerOriginResponse?
    let location: ServerLocationResponse?
    let image: String
    let url: String
    let episode: [String]
    
    func converToEntity() -> Character {
        
        return Character(id: id,
                         name: name,
                         status: status.capitalizingFirstLetter(),
                         species: species,
                         type: type.capitalizingFirstLetter(),
                         gender: gender.capitalizingFirstLetter(),
                         origin: origin?.name?.capitalizingFirstLetter() ?? "",
                         location: location?.name?.capitalizingFirstLetter() ?? "",
                         image: image,
                         url: url,
                         episode: episode)
    }
}
