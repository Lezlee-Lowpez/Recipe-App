//
//  ImageView.swift
//  Recipe-App
//
//  Created by Lesley Lopez on 9/16/24.
//

import SwiftUI

struct ImageView: View {
    
    var url: String
    
    var body: some View {
        
        AsyncImage(url: URL(string: url)){ phase in
            if let image = phase.image {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:50, height:50)
            } else {
                Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                    .frame(width:50, height:50)
            }
           
        }
    }
}

#Preview {
    ImageView(url: "https://img.spoonacular.com/recipes/716429-312x231.jpg")
}
