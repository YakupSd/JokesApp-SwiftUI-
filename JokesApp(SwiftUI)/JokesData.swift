//
//  JokesData.swift
//  JokesApp(SwiftUI)
//
//  Created by Yakup Suda on 11.07.2023.
//

import Foundation

// MARK: - Main
struct Main: Identifiable, Codable { //Identifiable: listelerde göstermek ve kullanmak için
    let id = UUID()//Identifiable protokolüne uysun diye biz ekliyoruz.
    let type: String
    let value: [Value]
}

// MARK: - Value
struct Value: Identifiable, Codable {
    let id: Int
    let joke: String
    let categories: [String]
}
 
//https://api.chucknorris.io/jokes/random
//https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json

 
