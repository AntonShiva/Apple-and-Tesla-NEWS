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
                    
                    Text("Apple News")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                        .padding(.top)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(viewModel.news, id: \.url) { article in
                                NewsBlockView(article: article)
                                
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                .background(.secondary.opacity(0.2))
            }
        }
        
    }
    
  
}

#Preview {
    ContentView()
}




