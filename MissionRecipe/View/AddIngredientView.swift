import SwiftUI

struct AddIngredientView: View {
    @State private var name: String = ""
    @State private var type: String = ""
    @State private var daysTillExp: String = ""
    @State private var comments: String = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
      NavigationView {
        VStack {
          VStack(alignment: .leading, spacing: 20) {
            Text("Ingredient Information")
              .font(.system(.title, design: .serif))
              .fontWeight(.bold)
              .foregroundColor(Color("Teal"))
            // MARK: - TODO NAME
            TextField("Name", text: $name)
              .padding()
              .background(Color(UIColor.tertiarySystemFill))
              .cornerRadius(9)
              .font(.system(size: 24, weight: .bold, design: .default))
            TextField("Type", text: $type)
              .padding()
              .background(Color(UIColor.tertiarySystemFill))
              .cornerRadius(9)
              .font(.system(size: 24, weight: .bold, design: .default))
            TextField("Days Till Expiration", text: $daysTillExp)
                .padding()
                .background(Color(UIColor.tertiarySystemFill))
                .cornerRadius(9)
                .font(.system(size: 24, weight: .bold, design: .default))
            TextField("Comments", text: $comments)
                .padding()
                .background(Color(UIColor.tertiarySystemFill))
                .cornerRadius(9)
                .font(.system(size: 24, weight: .bold, design: .default))
            // MARK: - SAVE BUTTON
            Button(action: {
              if self.name != "" {
                let ingred = Ingredient(name: self.name,expiration: Int(self.daysTillExp) ?? 0,type: self.type, comments: self.comments);
                ingredientData.append(ingred);
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

struct AddIngredientView_Previews: PreviewProvider {
  static var previews: some View {
    AddIngredientView()
      .previewDevice("iPhone 11")
  }
}
