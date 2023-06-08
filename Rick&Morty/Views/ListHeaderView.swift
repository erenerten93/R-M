//
//  ListHeaderView.swift
//  Rick&Morty
//
//  Created by Eren Erten on 8.06.2023.
//

import SwiftUI

struct ListHeaderView: View {
    
    var body: some View {
        
        HStack {
            
            Image(systemName: "eyes")
            Text("Click on any cell for further information")
        }
        .font(.system(size: 10))
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ListHeaderView()
    }
}
