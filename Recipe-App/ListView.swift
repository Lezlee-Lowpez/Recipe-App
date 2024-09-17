//
//  ListView.swift
//  Recipe-App
//
//  Created by Lesley Lopez on 9/16/24.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var viewModel: RecipeViewModel
    
    // Incorporate Environment var for oop
    
    var body: some View {
        
        List{
            ForEach(viewModel.recipe) { recipe in
                
                HStack {
                    Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                    Text(recipe.title)
                }
            }
            
        }
        
        
    }
}

#Preview {
    ListView()
}
