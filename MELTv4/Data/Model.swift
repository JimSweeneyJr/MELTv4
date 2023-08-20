//
//  Model.swift
//  MELTv4
//
//  Created by James Sweeney on 8/13/23.
//

import SwiftUI

struct Card: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let bio: String
    /// Card x position
    var x: CGFloat = 0.0
    /// Card y position
    var y: CGFloat = 0.0
    /// Card rotation angle
    var degree: Double = 0.0
    let rating: Int
    let serves: Int
    let preparation: Int
    let cooking: Int
    let instructions: [String]
    let ingredients: [String]
   
}
