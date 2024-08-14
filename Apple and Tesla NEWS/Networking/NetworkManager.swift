//
//  NetworkManager.swift
//  Apple and Tesla NEWS
//
//  Created by Anton Rasen on 24.07.2024.
//

import Foundation

final class NetworkManager {
    
    // MARK: - Properties
    static let shared = NetworkManager()
    static let urlAppleNews = "https://newsapi.org/v2/everything?q=apple&from=2024-07-28&to=2024-07-28&sortBy=popularity&apiKey=76697962ffa04d6bb38fbe8693fcf355"
    static let urlTeslaNews = "https://newsapi.org/v2/everything?q=tesla&from=2024-07-14&sortBy=publishedAt&apiKey=76697962ffa04d6bb38fbe8693fcf355"
    private let decoder = JSONDecoder()
    // MARK: - Initialiser
    private init() {
        decoder.dateDecodingStrategy = .iso8601
    }
    
    //MARK: - Methods
    func getNews(url: String) async throws -> News {
        guard let url = URL(string: url) else { throw NetworkErrors.urlIsInvalid }
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { throw NetworkErrors.responseIsInvalid }
        do {
            return try decoder.decode(News.self, from: data)
        } catch {
            throw NetworkErrors.dataIsInvalid
        }
    }
}



