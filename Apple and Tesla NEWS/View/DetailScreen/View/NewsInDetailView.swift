//
//  NewsInDetailView.swift
//  Apple and Tesla NEWS
//
//  Created by Anton Rasen on 15.08.2024.
//

import SwiftUI

struct NewsInDetailView: View {
    let article: Article
    var body: some View {
       
        ZStack(alignment: .topLeading) {
            // Parallax effect
            ScrollView(.vertical, showsIndicators: false) {
                ParalaxImageView(article: article)
                
                VStack(alignment: .leading, spacing: 20) {
                    Text(article.title)
                        .titleFont()
                    
                    if let description = article.description {
                        Text(description)
                            .discriptionFont()
                    }
                    
                    Text(article.publishedAt.convertDate())
                        .discriptionFont()
                }
                .padding(.top, 50)
                .padding(.horizontal, 40)
                
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.background)
                .background(GradienView())
            }
            .navigationBarHidden(true)
            .ignoresSafeArea()
            
            BackButtonView()
                .padding(.leading)
        }
    }
}


