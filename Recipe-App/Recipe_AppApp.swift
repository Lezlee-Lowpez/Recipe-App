//
//  Recipe_AppApp.swift
//  Recipe-App
//
//  Created by Lesley Lopez on 9/16/24.
//

import SwiftUI

@main
struct Recipe_AppApp: App {
    
    @StateObject var viewModel = RecipeViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(viewModel)
        }
    }
}
