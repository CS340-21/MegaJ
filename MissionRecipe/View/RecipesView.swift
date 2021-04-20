//
//  RecipesView.swift
//  MissionRecipe
//
//  Created by Megan Stanton on 4/13/21.
//

import SwiftUI

struct RecipesView: View {
    @State var recipes: [Recipe] = recipesData
    @State private var showingAddRecipe: Bool = false
    var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
    HStack(alignment: .center, spacing: 15) {
            Text("Recipes")
                .fontWeight(.bold)
                .modifier(TitleModifier())
           Button(action: {
                recipes = recipesData;
            }) {
                Image("refresh")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50, alignment: .center)
            } //: BUTTON
            .accentColor(Color("Teal"))
            }
            VStack(alignment: .center, spacing: 10) {
            ForEach(recipes) { item in
                RecipeCardView(recipe: item)
            }
            }
            .frame(maxWidth: 640)
            .padding(.horizontal)
        }
    .padding(.bottom, 10)
    .background(
        Image("background")
            .edgesIgnoringSafeArea(.all)
    )
  /*  .sheet(isPresented: self.$showingAddRecipe) {
      AddRecipeView()
    }*/
        
    }
}

struct RecipesView_Previews: PreviewProvider {
  static var previews: some View {
    RecipesView()
      .previewDevice("iPhone 11 Pro")
      .environment(\.colorScheme, .light)
  }
}

struct TitleModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.system(.title, design: .serif))
      .foregroundColor(Color("Teal"))
      .padding(8)
  }
}
