//
//  IngredientsView.swift
//  MissionRecipe
//
//  Created by Megan Stanton on 4/13/21.
//

import SwiftUI

struct IngredientsView: View {
    var ingredients: [Ingredient] = ingredientData
    @State private var showingAddIngredient: Bool = false
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
                Text("Ingredients")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                VStack(alignment: .center, spacing: 10) {
                ForEach(ingredients) { item in
                    IngredientCardView(ingredient: item)
                }
                }
                .frame(maxWidth: 640)
                .padding(.horizontal)
            Button(action: {
              self.showingAddIngredient.toggle()
            }) {
              Image(systemName: "plus.circle.fill")
                .resizable()
                .scaledToFit()
                .background(Circle().fill(Color("ColorBase")))
                .frame(width: 48, height: 48, alignment: .center)
            } //: BUTTON
              .accentColor(Color("Teal"))
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
