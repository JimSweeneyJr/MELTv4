//
//  CardDetailView.swift
//  MELTv4
//
//  Created by James Sweeney on 9/2/23.
//

import SwiftUI

struct CardDetailView: View {
    
    var card: Card
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    CardDetailHeaderView(card: card)
                    VStack(alignment: .leading, spacing: 20) {
                        // TITLE
                        Text(card.name)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            
                        //HEADLINE
                        Text(card.bio)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //NUTRIENTS
//                        FruitsNutrientsView(fruit: fruit)
                        
                        //SUBHEADLING
                        Text("Learn more about the \(card.name)".uppercased())
                            .fontWeight(.bold)
                            
                        //DESCRIPTION
//                        Text(card.instructions)
//                            .multilineTextAlignment(.leading)
                       
                    }//:VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//: VSTACK
                .navigationBarTitle(card.name, displayMode: .inline)
                .navigationBarHidden(true)
            }//: SCROLL
            .edgesIgnoringSafeArea(.top)
        }//: NAVIGATION
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView(card: cardData[1])
    }
}
