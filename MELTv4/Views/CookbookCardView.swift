//
//  CookbookCardView.swift
//  MELTv4
//
//  Created by James Sweeney on 8/19/23.
//

import SwiftUI

struct CookbookCardView: View {
    
    var card: Card
    
    var body: some View {
        HStack {
            
            VStack(alignment: .leading, spacing: 10, content: {
                Text(card.name)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(card.bio)
                    .font(.caption)
                    .lineLimit(3)
                Text("Serves: \(card.serves), Cook Time: \(card.cooking)")
                
               
                
            })
            
            Spacer(minLength: 10)
            
            Image(card.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 90, height: 90)
                .cornerRadius(10)
            
        }
        .padding(.horizontal)
        Divider()
    }
}

struct CookbookCardView_Previews: PreviewProvider {
    static var previews: some View {
        CookbookView()
    }
}
