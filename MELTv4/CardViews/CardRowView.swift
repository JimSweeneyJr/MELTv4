//
//  CardRowView.swift
//  MELTv4
//
//  Created by James Sweeney on 9/2/23.
//

import SwiftUI

struct CardRowView: View {
    
    var card: Card
    
    var body: some View {
        HStack {
            Image(card.imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
//                .scaledToFit()
                .frame(width: 120, height: 120, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .cornerRadius(9)
            VStack(alignment: .leading, spacing: 5) {
                Text(card.name)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(card.bio)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
                
        }//: HSTACK
    }
}

struct CardRowView_Previews: PreviewProvider {
    static var previews: some View {
        CardRowView(card: cardData[4])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
