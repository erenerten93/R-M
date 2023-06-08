//
//  ProgressViewExample.swift
//  Rick&Morty
//
//  Created by Eren Erten on 8.06.2023.
//

import SwiftUI

struct ProgressViewExample: View {
    
    var body: some View {
        
        HStack {
            
            Spacer()
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint:Color("DeepBlue")))
            
            Spacer()
        }
    }
}

struct ProgressViewView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ProgressViewExample()
    }
}
