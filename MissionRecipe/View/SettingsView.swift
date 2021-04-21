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
                        Section(header: Text("Application")) {
                            HStack {
                              Text("Product").foregroundColor(Color.gray)
                              Spacer()
                              Text("Mission Recipe")
                            }
                            HStack {
                              Text("Compatibility").foregroundColor(Color.gray)
                              Spacer()
                              Text("iPhone & iPad")
                            }
                            HStack {
                              Text("Developers").foregroundColor(Color.gray)
                              Spacer()
                              Text("Josh Gray, Jaidin Jackson, Megan Stanton")
                            }
                            HStack {
                              Text("Designers").foregroundColor(Color.gray)
                              Spacer()
                              Text("Josh Gray, Jaidin Jackson, Megan Stanton")
                            }
                            HStack {
                              Text("Website").foregroundColor(Color.gray)
                              Spacer()
                              Text("https://github.com/CS340-21/MegaJ")
                            }
                            HStack {
                              Text("Version").foregroundColor(Color.gray)
                              Spacer()
                              Text("1.0.0")
                            }
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
