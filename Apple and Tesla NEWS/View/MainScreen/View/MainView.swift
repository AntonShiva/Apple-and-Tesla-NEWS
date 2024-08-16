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
                
                    NewsSectionView(title: "Apple News", articles: viewModel.appleNews)
                    NewsSectionView(title: "Tesla News", articles: viewModel.teslaNews)
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


