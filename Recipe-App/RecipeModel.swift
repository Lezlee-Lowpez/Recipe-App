//
//  RecipeModel.swift
//  Recipe-App
//
//  Created by Lesley Lopez on 9/16/24.
//

import Foundation

struct RecipeModel : Codable {
    
    // set up how the data should be parsed from the json
    
    var results: [Results]
    var offset: Int
    var number: Int
    var totalResults: Int
    
    
}

struct Results : Codable, Identifiable {
    var id: Int
    var title: String
    var image: String
    var imageType: String
}
