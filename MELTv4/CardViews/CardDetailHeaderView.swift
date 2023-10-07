//
//  CardDetailHeaderView.swift
//  MELTv4
//
//  Created by James Sweeney on 9/2/23.
//

import SwiftUI

struct CardDetailHeaderView: View {
    
    var card: Card
    
    @State private var isAnimatingImage: Bool = false
    
    
    var body: some View {
        ZStack {
            Image(card.imageName)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
                .cornerRadius(8)
                
            }//: ZSTACK
        .frame(width: 300, height: 300, alignment: .center)
        .scaledToFit()
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailHeaderView(card: cardData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
