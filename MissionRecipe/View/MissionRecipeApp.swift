//
//  MissionRecipeApp.swift
//  MissionRecipe
//
//  Created by Joshua Gray on 3/17/21.
//

import SwiftUI

struct MissionRecipeApp: View {
  var body: some View {
    TabView {
      RecipesView()
        .tabItem({
          Image("RecipeIcon")
          Text("Recipes")
        })
      IngredientsView()
        .tabItem({
          Image("IngredientIcon")
          Text("Ingredients")
        })
      SettingsView()
        .tabItem({
          Image("SettingsIcon")
          Text("Settings")
        })
    }
    .accentColor(Color.primary)
  }
}

struct AppView_Previews: PreviewProvider {
  static var previews: some View {
    MissionRecipeApp()
      .previewDevice("iPhone 11")
      .environment(\.colorScheme, .dark)
  }
}



