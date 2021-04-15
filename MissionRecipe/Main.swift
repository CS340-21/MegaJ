import SwiftUI
import Foundation

@main
struct MissionApp: App {
  
  @AppStorage("isDarkMode") var isDarkMode: Bool = false
  
  var body: some Scene {
    WindowGroup {
      MissionRecipeApp()
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
  }
}
