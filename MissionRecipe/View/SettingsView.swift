//
//  SettingsView.swift
//  MissionRecipe
//
//  Created by Megan Stanton on 4/13/21.
//

import SwiftUI

struct SettingsView: View {
    
    @State var username: String = ""
    
    
    var body: some View {
        NavigationView {
                    Form {
                        Section(header: Text("Profile")){
                            TextField("Username", text: $username)
                        }
                    }
                    .navigationBarTitle("Settings")
                
        }
    }
    

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
      .previewDevice("iPhone 11 Pro")
      .environment(\.colorScheme, .light)
  }
}
}
