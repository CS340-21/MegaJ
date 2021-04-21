//
//  SettingsView.swift
//  MissionRecipe
//
//  Created by Megan Stanton on 4/13/21.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
          // MARK: - HEADER
          VStack(alignment: .center, spacing: 5) {
            
            HStack {
                
                Text("Settings".uppercased())
                  .font(.system(.title, design: .serif))
                  .fontWeight(.bold)
                    .foregroundColor(Color("White"))
                    .frame(width: 300.0, height: 50.0)
                    .position(x: 169 ,y: 0)
            }

          }
          .padding()
          .background(
            Image("background")
                .edgesIgnoringSafeArea([.top])
            )
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
      .previewDevice("iPhone 11 Pro")
      .environment(\.colorScheme, .light)
  }
}
