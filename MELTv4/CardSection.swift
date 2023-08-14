//
//  CardSection.swift
//  MELTv4
//
//  Created by James Sweeney on 8/13/23.
//

import SwiftUI


struct CardSection: View {
    var body: some View {
        ZStack{
            ForEach(cardData.reversed()) { card in
                CardView(card: card)
            }
        }
        .padding(8)
        
        .zIndex(1.0)
    }
}

struct CardSection_Previews: PreviewProvider {
    static var previews: some View {
        CardSection()
    }
}
