//
//  IngredientsView.swift
//  MissionRecipe
//
//  Created by Megan Stanton on 4/13/21.
//

import SwiftUI

struct IngredientsView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
          // MARK: - HEADER
            VStack(alignment: .center, spacing: 5) {
            
            Text("Ingredients".uppercased())
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

struct IngredientsView_Previews: PreviewProvider {
  static var previews: some View {
    IngredientsView()
      .previewDevice("iPhone 11 Pro")
      .environment(\.colorScheme, .light)
  }
}
