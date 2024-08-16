//
//  ParalaxImageView.swift
//  Apple and Tesla NEWS
//
//  Created by Anton Rasen on 15.08.2024.
//

import SwiftUI

struct ParalaxImageView: View {
    let article: Article
    var body: some View {
        GeometryReader { geometry in
            if let url = article.urlToImage, let imageURL = URL(string: url) {
                AsyncImage(url: imageURL) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .offset(y: -geometry.frame(in: .global).minY)
                            .frame(width: Size.width, height: geometry.frame(in: .global).minY + Size.height + 10)
                        
                    }
                }
            }
        }
        .frame(height: Size.height)
    }
}
