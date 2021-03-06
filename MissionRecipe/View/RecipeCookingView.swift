import SwiftUI

struct RecipeCookingView: View {
  // MARK: - PROPERTIES
  
  var recipe: Recipe
  
  var body: some View {
    HStack(alignment: .center, spacing: 5) {
      HStack(alignment: .center, spacing: 2) {
        Image(systemName: "person.2")
        Text("Serves: \(recipe.serves)")
      }
      HStack(alignment: .center, spacing: 2) {
        Image(systemName: "clock")
        Text("Prep: \(recipe.prepTime)")
      }
      HStack(alignment: .center, spacing: 2) {
        Image(systemName: "flame")
        Text("Cooking: \(recipe.cookTime)")
      }
      HStack(alignment: .center, spacing: 2) {
          Image(systemName: "number")
          Text("Ingredients Match: \(recipe.numMatch)")
        }
    }
    .font(.footnote)
    .foregroundColor(Color.gray)
  }
}

struct RecipeCookingView_Previews: PreviewProvider {
  static var previews: some View {
    RecipeCookingView(recipe: recipesData[0])
      .previewLayout(.fixed(width: 450, height: 60))
  }
}
