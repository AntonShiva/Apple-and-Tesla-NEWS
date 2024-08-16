//
//  NewsBlockView.swift
//  Apple and Tesla NEWS
//
//  Created by Anton Rasen on 09.08.2024.
//

import SwiftUI

struct NewsBlockView: View {
    
    let article: Article
    
    var body: some View {
        VStack {
            if let url = article.urlToImage, let imageURL = URL(string: url) {
                AsyncImage(url: imageURL) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 265, height: 160)
                            .cornerRadius(11)
                            .padding(.horizontal, 5)
                    } else {
                        ZStack {
                            Rectangle()
                                .frame(width: 265, height: 160)                                .foregroundStyle(.secondary)
                                .opacity(0.2)
                                .cornerRadius(11)
                                .padding(.horizontal, 5)
                            
                            Image(systemName: "photo")
                                .resizable()
                                .foregroundStyle(.secondary)
                                .scaledToFit()
                                .frame(height: 80)
                        }
                    }
                    
                }
            }
            
            
            VStack(alignment: .leading) {
                Text(article.title)
                    .titleFont()
                Spacer()
                
                Text(article.publishedAt.convertDate())
                    .discriptionFont()
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 5)
            .padding(.top, 5)
            Spacer()
        }
        .frame(width: 270, height: 270)
        .padding(10)
        .background(.background)
        .cornerRadius(11)
    }
}

#Preview {
    ContentView()
}
