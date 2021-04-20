//
//  SettingsView.swift
//  MissionRecipe
//
//  Created by Megan Stanton on 4/13/21.
//

import SwiftUI

struct DiscussionView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
          // MARK: - HEADER
          VStack(alignment: .center, spacing: 5) {
            
            Text("Discussion".uppercased())
              .font(.system(.title, design: .serif))
              .fontWeight(.bold)
              .foregroundColor(Color("White"))
            Image("WIP")
              .scaledToFit()
          }
          .padding()
          .background(
            Image("background")
                .edgesIgnoringSafeArea([.top])
            )
        }
    }
}

struct DisscusionView_Previews: PreviewProvider {
  static var previews: some View {
    DiscussionView()
      .previewDevice("iPhone 11 Pro")
      .environment(\.colorScheme, .light)
  }
}
