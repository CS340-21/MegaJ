//
//  IngredientModel.swift
//  MissionRecipe
//
//  Created by Megan Stanton on 4/13/21.
//

import SwiftUI

// MARK: - RECIPE MODEL

struct Ingredient: Equatable, Identifiable, Comparable {
    static func < (lhs: Ingredient, rhs: Ingredient) -> Bool {
        lhs.name < rhs.name
    }
    
  var id = UUID()
  var name: String
  var expiration: Int
  var type: String
  var comments: String
}
