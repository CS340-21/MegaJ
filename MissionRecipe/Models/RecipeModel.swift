//
//  RecipeModel.swift
//  MissionRecipe
//
//  Created by Megan Stanton on 4/13/21.
//

import SwiftUI

// MARK: - RECIPE MODEL

struct Recipe: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var serves: Int
  var prepTime: Int
  var cookTime: Int
  var instructions: [String]
  var ingredients: [String]
}
