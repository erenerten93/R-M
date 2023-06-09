//
//  CharacterListView.swift
//  Rick&Morty
//
//  Created by Eren Erten on 8.06.2023.
//

import SwiftUI

struct CharacterListView: View {
    
    @StateObject var viewModel: CharacterListViewModel
    
    @Environment(\.colorScheme) var currentMode
    
    var body: some View {
        NavigationStack {
            VStack{
                List {
                    
                    Section(header: ListHeaderView()) {
                        
                        if viewModel.showProgressView {
                            
                            ProgressViewExample()
                        }
                        
                        
                        ForEach(viewModel.characters) { character in
                            
                            NavigationLink(destination: CharacterDetailView(viewModel: CharacterDetailViewModel(character: character))){
                                
                                CharacterCellView(image: character.image,
                                                  name: character.name,
                                                  status: character.status)
                            }
                            .onAppear {
                                
                                if character == viewModel.characters.last {
                                    
                                    viewModel.getAllCharacters(page: viewModel.currentPage)
                                }
                            }
                        }.foregroundColor(currentMode == .dark ? Color("Silver") : Color("DeepBlue"))
                        
                    }
                    .onAppear {
                        
                        if viewModel.characters.isEmpty {
                            
                            viewModel.getAllCharacters(page: 1)
                        }
                    }
                }
            }
            
        }
    }
}

struct CharacterListView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterListView(viewModel: CharacterListViewModel())
    }
}
