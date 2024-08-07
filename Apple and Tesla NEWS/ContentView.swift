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
                                VStack {
                                    ZStack {
                                        Rectangle()
                                            .frame(height: 160)
                                            .foregroundStyle(.secondary)
                                            .opacity(0.2)
                                            .cornerRadius(11)
                                            .padding(.horizontal, 5)
                                        
                                        Image(systemName: "photo")
                                            .resizable()
                                            .foregroundStyle(.secondary)
                                            .scaledToFit()
                                            .frame(height: 80)
                                    }
                                    
                                    VStack(alignment: .leading) {
                                        Text(article.title)
                                        
                                        Spacer()
                                        
                                        Text(article.publishedAt.convertDate())
                                           
                                    }
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal, 5)
                                    .padding(.top, 5)
                                    Spacer()
                                }
                                .frame(width: 270, height: 270)
                                .padding(15)
                                .background(.white)
                                .cornerRadius(8)
                                
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

extension Date {
    func convertDate() -> String {
        return formatted(.dateTime.hour().minute().day().month().year())
    }
}
