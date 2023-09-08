//
//  SponsoredCardView.swift
//  MELTv4
//
//  Created by James Sweeney on 9/7/23.
//

import SwiftUI

struct SponsoredCardView: View {
    
    @State var card: Card
    // MARK: - Drawing Constant
    let cardGradient = Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.5)])
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(card.imageName)
                .resizable()
                .clipped()
                
            
            
            
            // Linear Gradient
            LinearGradient(gradient: cardGradient, startPoint: .top, endPoint: .bottom)
            VStack {
                Spacer()
                VStack(alignment: .leading){
                    HStack {
                        Text(card.name).font(.largeTitle).fontWeight(.bold)
                    }
                    Text(card.bio).font(.body)
                }
            }
            .padding()
            .foregroundColor(.white)
            
        }
        .frame(width: 350, height: 350)
        .cornerRadius(20)
    }
}

struct SponsoredCardView_Previews: PreviewProvider {
    static var previews: some View {
        SponsoredCardView(card: cardData[1])
    }
}
