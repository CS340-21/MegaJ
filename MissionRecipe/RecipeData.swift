import SwiftUI

// MARK: - RECIPE DATA

var recipesData: [Recipe] = [
    Recipe(
    title: "Baked Buffalo Chicken Nuggets",
    headline: "Main Dish - Chicken",
    image: "BuffaloNuggets",
    serves: 4,
    prepTime: 10,
    cookTime: 15,
    numMatch: 0,
    instructions: [
        "Preheat air fryer to 400°F.",
        "In a shallow bowl combine one egg and 3 tablespoons of hot sauce.",
        "Combine 1/2 tsp garlic powder, 1/2 tsp paprika, 1/2 tsp chili powder, 1/8 tsp black pepper, 6 tbsp of bread crumb, and 1/4 cup of panko in a medium bowl and toss well.",
        "Cut 1 lb of chicken into 32 small bite sized pieces.",
        "Dip the chicken in the hot sauce egg mix, then into the crumbs and place on a work surface and spray with oil.",
        "Add in a single layer to the air fryer and cook 6-8 minutes turning halfway. Repeat wtih additional batches."
    ],
    ingredients: [
        "Egg",
        "Garlic Powder",
        "Paprika",
        "Chili Powder",
        "Black Pepper",
        "Italian Seasoned Breadcrumbs",
        "Panko",
        "Olive Oil Spray",
        "Hot Sauce",
        "Chicken"
    ]
    ),
    Recipe(
        title: "Basil-Parmesan Salmon",
        headline: "Main Dish - Salmon",
        image: "AirFrySalmon",
        serves: 4,
        prepTime: 5,
        cookTime: 15,
        numMatch: 0,
        instructions: [
            "Air Fryer Directions:",
            "1. Preheat air fryer to 400°F. Spritz the basket with olive oil.",
            "2. Season the 4 salmon filets with lemon juice, 1/4 tsp salt and pepper.",
            "3. Mix the 3 tbsp of mayonnaise with 6 minced basil leaves and 2 tablespoons Parmesan cheese in a small bowl.",
            "4. Spread completely over the top of salmon. Sprinkle the remaining tablespoon of Parmesan cheese on top.",
            "5. In batches, air fry 7 minutes, or longer depending on thickness of salmon.",
            "Oven Directions:",
            "1. Preheat the oven to 425°F. Spritz a sheet pan with olive oil.",
            "2. Season the 4 salmon filets with lemon juice, 1/4 tsp salt and pepper.",
            "3. Mix the 3 tbsp of mayonnaise with 6 minced basil leaves and 2 tablespoons Parmesan cheese in a small bowl.",
            "4. Spread completely over the top of salmon. Sprinkle remaining tablespoon of Parmesan cheese on top.",
            "5. Bake 8 to 12 minutes, depending on thickness of the salmon."
        ],
        ingredients: [
            "Olive Oil Spray",
            "Salmon",
            "Lemon",
            "Salt",
            "Black Pepper",
            "Mayonnaise",
            "Basil",
            "Grated Parmesan"
        ]
    )
]
