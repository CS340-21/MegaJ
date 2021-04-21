//
//  IngredientsView.swift
//  MissionRecipe
//
//  Created by Megan Stanton on 4/13/21.
//

import SwiftUI

struct IngredientsView: View {
    @State var ingredients: [Ingredient] = ingredientData.sorted()
    @State private var showingAddIngredient: Bool = false
    @State private var Refresh: Bool = false
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                Button(action: {
                    self.showingAddIngredient.toggle();
                    print(ingredients)
                }) {
                  Image("plus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50, alignment: .center)
                } //: BUTTON
                  .accentColor(Color("Teal"))
                Text("Ingredients")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                Button(action: {
                    ingredients = ingredientData.sorted();
                    print(ingredients)
                }) {
                    Image("refresh")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50, alignment: .center)
                } //: BUTTON
                .accentColor(Color("Teal"))
            }
                VStack(alignment: .center, spacing: 10) {
                    ForEach(ingredients) { item in
                    IngredientCardView(ingredient: item)
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
        .sheet(isPresented: self.$showingAddIngredient) {
          AddIngredientView()
        }
        }
}

struct IngredientsView_Previews: PreviewProvider {
  static var previews: some View {
    IngredientsView()
      .previewDevice("iPhone 11 Pro")
      .environment(\.colorScheme, .light)
  }
}
