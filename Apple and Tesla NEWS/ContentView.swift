//
//  ContentView.swift
//  Apple and Tesla NEWS
//
//  Created by Anton Rasen on 24.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var news: [Article] = []
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
    
    // MARK: - Methods
    func fetchNews() async {
        do {
            let articles = try await NetworkManager.shared.getNews()
            news = articles.articles
        } catch {
            if let error = error as? NetworkErrors {
                print(error)
            }
        }
    }
}

#Preview {
    ContentView()
}
