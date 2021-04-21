//
//  RecipesView.swift
//  MissionRecipe
//
//  Created by Megan Stanton on 4/13/21.
//

import SwiftUI

struct RecipesView: View {
    @State var recipes: [Recipe] = recipesData.sorted()
    @State private var showingAddRecipe: Bool = false
    var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
    HStack(alignment: .center, spacing: 15) {
            Text("Recipes")
                .fontWeight(.bold)
                .modifier(TitleModifier())
           Button(action: {
            recipes.sort(by: sorterforRecipe);
            recipes = recipesData;
            recipes.sort(by: sorterforRecipe);
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

func sorterforRecipe(this: Recipe, that: Recipe) -> Bool {
    var count: Int = 0;
    var count2: Int = 0;
    for item in this.ingredients {
        for item2 in ingredientData {
            if item == item2.name {
                count = count + 1;
            }
        }
    }
    if let found = recipesData.enumerated().first(where:{$0.element.title == this.title}){
        recipesData[found.offset].numMatch = count;
    }
    for item in that.ingredients {
        for item2 in ingredientData {
            if item == item2.name {
                count2 = count2 + 1;
            }
        }
    }
    if let found = recipesData.enumerated().first(where:{$0.element.title == that.title}){
        recipesData[found.offset].numMatch = count2;
    }
    return count > count2
}
