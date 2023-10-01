//
//  SelectScrollNav.swift
//  MELTv4
//
//  Created by James Sweeney on 9/30/23.
//

import SwiftUI

struct SelectScrollNav: View {
    var body: some View {
        ScrollView(.horizontal) {
                HStack(spacing: 22) {
                        
                        Text("Breakfast")
                        Text("Lunch")
                        Text("Dinner")
                        Text("Dessert")
                        Text("Snack")
                        Text("Vegetarian")
                        Text("Vegan")
                        Text("Under 15 mins")
                        Text("Gluten Free")
                        Text("Dairy Free")
                    }
                    .font(.custom(
                            "Bodini 72",
                            fixedSize: 14))
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity, maxHeight: 20)
                    .foregroundColor(.gray)
                    .padding(.bottom)
                    
            }
                
        }
    
}

struct SelectScrollNav_Previews: PreviewProvider {
    static var previews: some View {
        SelectScrollNav()
    }
}
