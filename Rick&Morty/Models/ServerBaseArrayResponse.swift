//
//  ServerBaseArrayResponse.swift
//  Rick&Morty
//
//  Created by Eren Erten on 8.06.2023.
//

import Foundation

struct ServerBaseArrayResponse<T: Codable>: Codable {

    let results: [T]
}
