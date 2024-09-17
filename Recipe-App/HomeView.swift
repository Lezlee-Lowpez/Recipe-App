//
//  ContentView.swift
//  Recipe-App
//
//  Created by Lesley Lopez on 9/16/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel: RecipeViewModel
    @State var queryText = ""
    
    
    var body: some View {
        VStack (spacing:0){
            HStack{
                TextField("Search a recipe", text: $queryText)
                    
                    .textFieldStyle(.roundedBorder)
                    .frame(height: 70)
                    
                
                Button(action: {
                    //when we press go it should search for the query
                    viewModel.callForData(food:queryText)
                }, label: {
                    Text("Go")
                        .foregroundStyle(.white)
                        .frame(width: 50,height: 40)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 15.0))
                })
            }
            .padding(.horizontal)
            
            ListView()
            Spacer()
        }
        .onAppear{
            viewModel.callForData(food:"pasta")
        }
    }
}

#Preview {
    HomeView()
}
