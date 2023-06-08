//
//  GetCharacterDetailUseCase.swift
//  Rick&Morty
//
//  Created by Eren Erten on 8.06.2023.
//

import Foundation
import Combine

class GetCharacterDetailUseCase {
    
    private let repository: CharacterRepository
    
    init(repository: CharacterRepository = CharacterRepositoryImplementation()) {
        
        self.repository = repository
    }
    
    func execute(id: Int) -> AnyPublisher<Character, Error> {
        
        repository.getCharacterDetail(id: id)
    }
}
