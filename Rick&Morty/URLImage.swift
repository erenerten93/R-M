//
//  URLImage.swift
//  Rick&Morty
//
//  Created by Eren Erten on 8.06.2023.
//

import SwiftUI

public struct URLImage: View {
    let imageUrl: URL?

    public init(imageUrl: URL?) {
        self.imageUrl = imageUrl
    }

    public var body: some View {
        AsyncImage(
            url: imageUrl,
            content: { image in
                image.resizable()
            },
            placeholder: {
                Color.gray
            }
        )
    }
}
