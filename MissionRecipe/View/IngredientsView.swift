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
            Image("background")
              .resizable()
              .scaledToFit()
              .padding(.top)
              .frame(width: 100, height: 100, alignment: .center)
              .shadow(color: Color("BlackTransparentLight"), radius: 8, x: 0, y: 4)
            
            Text("Ingredients".uppercased())
              .font(.system(.title, design: .serif))
              .fontWeight(.bold)
              .foregroundColor(Color("White"))
          }
          .padding()
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
