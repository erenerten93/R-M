//
//  String+Extension.swift
//  Rick&Morty
//
//  Created by Eren Erten on 8.06.2023.
//

import Foundation

extension String {
    
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
