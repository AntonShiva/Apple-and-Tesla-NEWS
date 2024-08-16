//
//  ContentView.swift
//  Apple and Tesla NEWS
//
//  Created by Anton Rasen on 24.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    let viewModel = ViewModel()
    
    var body: some View {
        VStack {
            NavigationView {
                ScrollView(.vertical, showsIndicators: false) {
                 
                    // MARK: - Apple News
                    Text("Apple News")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                        .padding(.top)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(viewModel.appleNews, id: \.url) { article in
                               NavigationLink {
                                   NewsInDetailView(article: article )
                                } label: {
                                    NewsBlockView(article: article)
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        .padding(.horizontal)
                    }
                    .shadow(color: .gray , radius: 10, x: 3, y: 5)
                    
                    // MARK: - Tesla News
                    Text("Tesla News")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                        .padding(.top)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(viewModel.teslaNews, id: \.url) { article in
                                NavigationLink {
                                    NewsInDetailView(article: article )
                                } label: {
                                    NewsBlockView(article: article)
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        .padding(.horizontal)
                    }
                    .shadow(color: .gray , radius: 10, x: 3, y: 5)
                }
                .background(.secondary.opacity(0.2))
                .refreshable {
                    viewModel.fetchAppleNews()
                    viewModel.fetchTeslaNews()
               }
            }
        }
    }
}

#Preview {
    ContentView()
}


//import SwiftUI
//
//struct ContentView: View {
//    
//    let viewModel = ViewModel()
//    
//    var body: some View {
//        VStack {
//            NavigationView {
//                ScrollView(.vertical, showsIndicators: false) {
//                    // Используем наш новый компонент для отображения секций
//                    NewsSectionView(title: "Apple News", articles: viewModel.appleNews)
//                    NewsSectionView(title: "Tesla News", articles: viewModel.teslaNews)
//                }
//                .background(.secondary.opacity(0.2))
//                .refreshable {
//                    viewModel.fetchAppleNews()
//                    viewModel.fetchTeslaNews()
//                }
//            }
//        }
//    }
//}
//
//struct NewsSectionView: View {
//    let title: String
//    let articles: [Article]
//    
//    var body: some View {
//        VStack(alignment: .leading) {
//            Text(title)
//                .font(.title)
//                .fontWeight(.bold)
//                .frame(maxWidth: .infinity, alignment: .leading)
//                .padding(.leading)
//                .padding(.top)
//            
//            ScrollView(.horizontal, showsIndicators: false) {
//                HStack(spacing: 15) {
//                    ForEach(articles, id: \.url) { article in
//                        NavigationLink {
//                            NewsInDetailView(article: article)
//                        } label: {
//                            NewsBlockView(article: article)
//                        }
//                        .buttonStyle(.plain)
//                    }
//                }
//                .padding(.horizontal)
//            }
//            .shadow(color: .gray, radius: 10, x: 3, y: 5)
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}
//
//
