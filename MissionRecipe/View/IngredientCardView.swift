import SwiftUI

struct IngredientCardView: View {
  // MARK: - PROPERTIES
  
  var ingredient: Ingredient
  var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
  @State private var showModal: Bool = false
  @State private var removeIngredient: Bool = false
  
  var body: some View {
    VStack(alignment: .leading, spacing: 0) {
      HStack(alignment: .center, spacing: 12) {
        // TITLE
        Text(ingredient.name)
          .font(.system(.title, design: .serif))
          .fontWeight(.bold)
          .foregroundColor(Color("Teal"))
          .lineLimit(1)
        // HEADLINE
        Text(ingredient.type)
          .font(.system(.body, design: .serif))
          .foregroundColor(Color.gray)
          .italic()
      }
      .padding()
      VStack(alignment: .leading, spacing: 0) {
        Text("Days Till Expiration: \(ingredient.expiration)")
          .font(.system(.body, design: .serif))
          .foregroundColor(Color("Purple"))
          .italic()
        // HEADLINE
        Text(ingredient.comments)
          .font(.system(.body, design: .serif))
          .foregroundColor(Color.gray)
          .italic()
      }
      .padding()
      .padding(.bottom, 12)
    }
    .background(Color.white)
    .cornerRadius(12)
    .shadow(color: Color("BlackTransparentLight"), radius: 8, x: 0, y: 0)
    .onTapGesture {
      self.hapticImpact.impactOccurred()
        if let index = ingredientData.firstIndex(of: ingredient) {
            ingredientData.remove(at: index);
            
        }
    }
  }
}

struct IngredientsCardView_Previews: PreviewProvider {
  static var previews: some View {
    IngredientCardView(ingredient: ingredientData[0])
      .previewLayout(.sizeThatFits)
  }
}
