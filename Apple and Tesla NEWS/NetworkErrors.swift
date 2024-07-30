//
//  NetworkErrors.swift
//  Apple and Tesla NEWS
//
//  Created by Anton Rasen on 30.07.2024.
//

import Foundation

enum NetworkErrors: String, Error {
    case urlIsInvalid = "The URL is invalid!"
    case responseIsInvalid = "The response from the server is invalid!"
    case dataIsInvalid = "The data received from the server is invalid!"
    
}
