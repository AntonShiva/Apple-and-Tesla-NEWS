//
//  NewsSectionView.swift
//  Apple and Tesla NEWS
//
//  Created by Anton Rasen on 16.08.2024.
//

import SwiftUI

struct NewsSectionView: View {
    let title: String
    let articles: [Article]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(articles, id: \.url) { article in
                        NavigationLink {
                            NewsInDetailView(article: article)
                        } label: {
                            NewsBlockView(article: article)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding(.horizontal)
            }
            .shadow(color: .gray, radius: 10, x: 3, y: 5)
        }
    }
}



