//
//  CharacterRepository.swift
//  Rick&Morty
//
//  Created by Eren Erten on 8.06.2023.
//

import Foundation
import Combine

protocol CharacterRepository {
    
    func getAllCharacters(page: Int)  -> AnyPublisher<[Character], Error>
    
    func getCharacterDetail(id: Int) -> AnyPublisher<Character, Error>
    
    func getAllCharactersById(ids: [Int]) -> AnyPublisher<[Character], Error>
}
