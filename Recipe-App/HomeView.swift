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
        VStack {
            HStack{
                TextField("Search a recipe", text: $queryText)
                    .frame(height: 50)
                    .border(Color.black)
                Button(action: {}, label: {
                    Text("Go")
                        .foregroundStyle(.white)
                        .frame(width: 50,height: 50)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 15.0))
                        
//                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        
                })
            }
            
            ListView()
            Spacer()
        }
        .padding()
        .onAppear{
            viewModel.callForData()
        }
    }
}

#Preview {
    HomeView()
}
