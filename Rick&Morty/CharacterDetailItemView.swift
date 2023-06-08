//
//  CharacterDetailItemView.swift
//  Rick&Morty
//
//  Created by Eren Erten on 8.06.2023.
//

import SwiftUI

struct CharacterDetailItemView: View {
    
    @Environment(\.colorScheme) var currentMode
    
    var title: String
    var value: String
    
    init(title: String, value: String) {
        
        self.title = title
        self.value = value
    }
    
    var body: some View {
        
        HStack {
            
            Text(title)
                .foregroundColor(Color("LightBlue"))
                .font(.footnote)
            
            Spacer()
            
            VStack {
                
                Text(value)
                    .foregroundColor(currentMode == .dark ? Color("Silver") : Color("DeepBlue"))
            }
        }
    }
}

struct CharacterDetailItemView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CharacterDetailItemView(title: "Title", value: "Value")
    }
}
