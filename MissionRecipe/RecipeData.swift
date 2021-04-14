import SwiftUI

// MARK: - RECIPE DATA

let recipesData: [Recipe] = [
  Recipe(
    title: "Baked Buffalo Chicken Nuggets",
    headline: "Main Dish - Chicken",
    image: "BuffaloNuggets",
    serves: 4,
    prepTime: 10,
    cookTime: 15,
    instructions: [
        "Preheat air fryer to 400°F.",
        "In a shallow bowl combine the egg and hot sauce.",
        "Combine garlic powder, paprika, chili powder, black pepper, bread crumb, and panko in a medium bowl and toss well.",
        "Dip the chicken in the hot sauce egg mix, then into the crumbs and place on a work surface and spray with oil.",
        "Add in a single layer to the air fryer and cook 6-8 minutes turning halfway. Repeat wtih additional batches."
    ],
    ingredients: [
        "1 egg",
        "1/2 tsp garlic powder",
        "1/2 tsp chili powder (use ground cayenne to make it hotter)",
        "1/8 tsp black pepper",
        "6 tbsp whole wheat Italian seasoned breadcrumbs",
        "1/4 cup panko",
        "olive oil spray",
        "3 tbsp Frank's Hot Sauce (or Tabasco if you want it hot",
        "1 lb skinless chicken breast (cut into 32 small bite sized pieces)"
    ]
  )
]
