//
//  RecipesView.swift
//  MissionRecipe
//
//  Created by Megan Stanton on 4/13/21.
//

import SwiftUI

struct RecipesView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
          // MARK: - HEADER
          VStack(alignment: .center, spacing: 5) {
            Text("Recipes".uppercased())
              .font(.system(.title, design: .serif))
              .fontWeight(.bold)
              .foregroundColor(Color("White"))
          }
          .padding()
          .background(
            Image("background")
                .edgesIgnoringSafeArea([.top])
            )
        }
    }
}

struct RecipesView_Previews: PreviewProvider {
  static var previews: some View {
    RecipesView()
      .previewDevice("iPhone 11 Pro")
      .environment(\.colorScheme, .light)
  }
}
