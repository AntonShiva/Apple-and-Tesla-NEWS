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
    var appleNews: [Article] = []
    var teslaNews: [Article] = []
    
    init() {
        fetchAppleNews()
        fetchTeslaNews()
    }
    
    // MARK: - Methods
    func fetchAppleNews() {
        Task {
            do {
                let articles = try await NetworkManager.shared.getNews(url: NetworkManager.urlAppleNews)
               appleNews = articles.articles
            } catch {
                if let error = error as? NetworkErrors {
                    print(error)
                }
            }
        }
    }
    
    func fetchTeslaNews() {
        Task {
            do {
                let articles = try await NetworkManager.shared.getNews(url: NetworkManager.urlTeslaNews)
                teslaNews = articles.articles
            } catch {
                if let error = error as? NetworkErrors {
                    print(error)
                }
            }
        }
    }
    
    
}
