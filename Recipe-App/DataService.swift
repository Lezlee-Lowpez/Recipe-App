//
//  DataService.swift
//  Recipe-App
//
//  Created by Lesley Lopez on 9/16/24.
//

import Foundation

struct DataService {
    
    func getRecipes() async -> [Results]{
        
        
        // first get the api key ready
        guard let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String else {
            print("invalid API KEY RETURNED.")
            return []
        }
        
        
        //URL
        
        if let url = URL(string: "https://api.spoonacular.com/recipes/complexSearch?query=pasta"){
            
            //URL Request
            // if valid url is returned - create request for the api
            var request = URLRequest(url: url)
            request.addValue(apiKey, forHTTPHeaderField: "x-api-key")
            
            //URL Session
            // then send the request and handle the data and response
            do {
               let (data,response) = try await URLSession.shared.data(for: request)
//                print(response)
                
                // then decode the data
                let decoder = JSONDecoder()
                
                let results = try decoder.decode(RecipeModel.self, from: data)
                return results.results
                
            } catch {
                print(error)
            }
            
        }
        
        return []
    }
    
   
    
}
