//
//  HTTPError.swift
//  Rick&Morty
//
//  Created by Eren Erten on 8.06.2023.
//

import Foundation

enum HTTPError: LocalizedError, Equatable {
    case invalidResponse
    case invalidStatusCode
}
