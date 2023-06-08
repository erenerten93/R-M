//
//  ImageExtension.swift
//  Rick&Morty
//
//  Created by Eren Erten on 8.06.2023.
//

import SwiftUI

extension Image {
    
    func renderImage(url: URL) -> Self {
        
        if let image = try? Data(contentsOf: url) {
            
            return Image(uiImage: UIImage(data: image)!)
                .resizable()
        }
        
        return self
            .resizable()
    }
}
