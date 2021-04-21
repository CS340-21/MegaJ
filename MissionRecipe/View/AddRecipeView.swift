import SwiftUI

struct AddRecipeView: View {
    @State private var title: String = ""
    @State private var headline: String = ""
    @State private var image: String = ""
    @State private var serves: String = ""
    @State private var prepTime: String = ""
    @State private var cookTime: String = ""
    @State private var instructions: String = ""
    @State private var ingredients: String = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
        VStack {
          VStack(alignment: .leading, spacing: 20) {
            Text("Ingredient Information")
              .font(.system(.title, design: .serif))
              .fontWeight(.bold)
              .foregroundColor(Color("Teal"))
            // MARK: - TODO NAME
            TextField("Name of Recipe", text: $title)
              .padding()
              .background(Color(UIColor.tertiarySystemFill))
              .cornerRadius(9)
              .font(.system(size: 24, weight: .bold, design: .default))
            TextField("Headline (Format Example: Main - Fish)", text: $headline)
              .padding()
              .background(Color(UIColor.tertiarySystemFill))
              .cornerRadius(9)
              .font(.system(size: 24, weight: .bold, design: .default))
            TextField("Image Name", text: $image)
                .padding()
                .background(Color(UIColor.tertiarySystemFill))
                .cornerRadius(9)
                .font(.system(size: 24, weight: .bold, design: .default))
            TextField("Serves", text: $serves)
                .padding()
                .background(Color(UIColor.tertiarySystemFill))
                .cornerRadius(9)
                .font(.system(size: 24, weight: .bold, design: .default))
            TextField("Preparation Time", text: $prepTime)
                .padding()
                .background(Color(UIColor.tertiarySystemFill))
                .cornerRadius(9)
                .font(.system(size: 24, weight: .bold, design: .default))
            TextField("Cooking Time", text: $cookTime)
                .padding()
                .background(Color(UIColor.tertiarySystemFill))
                .cornerRadius(9)
                .font(.system(size: 24, weight: .bold, design: .default))
            TextField("Ingredients (Seperate by ,)", text: $ingredients)
                .padding()
                .background(Color(UIColor.tertiarySystemFill))
                .cornerRadius(9)
                .font(.system(size: 24, weight: .bold, design: .default))
            TextField("Instructions (Seperate by ,)", text: $instructions)
                .padding()
                .background(Color(UIColor.tertiarySystemFill))
                .cornerRadius(9)
                .font(.system(size: 24, weight: .bold, design: .default))
            // MARK: - SAVE BUTTON
            Button(action: {
              if self.title != "" {
                let instructionstemp = instructions.components(separatedBy: ",");
                let ingredientstemp = ingredients.components(separatedBy: ",");
                let recipe = Recipe(title: self.title, headline: self.headline, image: self.image, serves: Int(self.serves) ?? 0, prepTime: Int(self.prepTime) ?? 0, cookTime: Int(self.cookTime) ?? 0, instructions: instructionstemp, ingredients: ingredientstemp);
                recipesData.append(recipe);
                self.presentationMode.wrappedValue.dismiss();
              }
            })
            {
              Text("Save")
                .font(.system(size: 24, weight: .bold, design: .default))
                .padding()
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(Image("background")
                                .edgesIgnoringSafeArea([.top])
                            )
                .cornerRadius(9)
                .foregroundColor(Color.white)
            } //: SAVE BUTTON
          } //: VSTACK
            .padding(.horizontal)
            .padding(.vertical, 30)
            }
        }
      .accentColor(Color("Teal"))
      .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct AddRecipeView_Previews: PreviewProvider {
  static var previews: some View {
    AddRecipeView()
      .previewDevice("iPhone 11")
  }
}
