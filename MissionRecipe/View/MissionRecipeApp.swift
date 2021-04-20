//
//  MissionRecipeApp.swift
//  MissionRecipe
//
//  Created by Joshua Gray on 3/17/21.
//

import SwiftUI

struct MissionRecipeApp: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    
  var body: some View {
    TabView {
      RecipesView()
        .tabItem({
          Image("RecipeIcon")
        })
      AddRecipeView()
          .tabItem({
            Image("NewRecipeIcon")
          })
      IngredientsView()
        .tabItem({
          Image("IngredientIcon")
        })
      DiscussionView()
        .tabItem({
          Image("DiscussionIcon")
        })
      SettingsView()
        .tabItem({
            Image("SettingsIcon")
        })
    }
    .accentColor(Color.white)
  }
}

struct AppView_Previews: PreviewProvider {
  static var previews: some View {
    MissionRecipeApp()
      .previewDevice("iPhone 11")
      .environment(\.colorScheme, .light)
  }
}



