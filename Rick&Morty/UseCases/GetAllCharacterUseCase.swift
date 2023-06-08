//
//  GetAllCharacterUseCase.swift
//  Rick&Morty
//
//  Created by Eren Erten on 8.06.2023.
//

import Foundation
import Combine

class GetAllCharactersUseCase {
    
    private let repository: CharacterRepository
    
    init(repository: CharacterRepository = CharacterRepositoryImplementation()) {
        
        self.repository = repository
    }
    
    func execute(page: Int) -> AnyPublisher<[Character], Error> {
        
        repository.getAllCharacters(page: page)
    }
}
