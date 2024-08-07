//
//  ViewModel.swift
//  Apple and Tesla NEWS
//
//  Created by Anton Rasen on 07.08.2024.
//

import Foundation
import Observation

@Observable
@MainActor
final class ViewModel {
    
    // MARK: - Properties
    var news: [Article] = []
    
    init() {
        fetchNews()
    }
    
    // MARK: - Methods
    func fetchNews() {
        Task {
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
}
