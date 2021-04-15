import SwiftUI

struct IngredientCardView: View {
  // MARK: - PROPERTIES
  
  var ingredient: Ingredient
  var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
  @State private var showModal: Bool = false
  
  var body: some View {
    VStack(alignment: .leading, spacing: 0) {
      VStack(alignment: .leading, spacing: 12) {
        // TITLE
        Text(ingredient.name)
          .font(.system(.title, design: .serif))
          .fontWeight(.bold)
          .foregroundColor(Color("Teal"))
          .lineLimit(1)
        
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
      self.showModal = true
    }
  }
}

struct IngredientsCardView_Previews: PreviewProvider {
  static var previews: some View {
    IngredientCardView(ingredient: ingredientData[0])
      .previewLayout(.sizeThatFits)
  }
}
