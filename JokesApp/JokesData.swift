//
//  JokesData.swift
//  JokesApp
//
//  Created by bui khac lam on 02/09/2023.
//

import Foundation

struct Welcome : Identifiable , Codable{
    let id = UUID()
    let type: String
    let value: [Value]
}

// MARK: - Value
struct Value : Identifiable , Codable{
    let id: Int
    let joke: String
    let categories: [String]
}
