//
//  IngredientModel.swift
//  MissionRecipe
//
//  Created by Megan Stanton on 4/13/21.
//

import SwiftUI

// MARK: - RECIPE MODEL

struct Ingredient: Identifiable {
  var id = UUID()
  var name: String
  var expiration: Int
  var comments: [String]
}
