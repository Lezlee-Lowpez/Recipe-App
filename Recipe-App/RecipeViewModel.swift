//
//  RecipeViewModel.swift
//  Recipe-App
//
//  Created by Lesley Lopez on 9/16/24.
//

import Foundation
import SwiftUI

class RecipeViewModel: ObservableObject {
    // this is my observable object aka whats gonna keep track of the changes.
    
    @Published var recipe = [Results]()
    var dataService = DataService()
    
   
    
    func callForData(food:String) {
        //call for data in the model
        Task{
                let fetchedrecipes = await dataService.getRecipes(food: food)
            
            DispatchQueue.main.async {
                self.recipe = fetchedrecipes
            }
        }
    }
    
}
