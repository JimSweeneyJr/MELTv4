//
//  SponsoredView.swift
//  MELTv4
//
//  Created by James Sweeney on 9/30/23.
//

import SwiftUI

struct SponsoredView: View {
    var body: some View {
        
        Text("Sponsored")
        .font(.title2)
        .fontWeight(.bold)
        .padding(.trailing, 230)
        .padding(.top, -10)
    
        ScrollView {
            VStack(alignment: .leading) {
                
                ForEach(card.shuffled()) { item in
                    NavigationLink(destination: CardDetailView(card: item)) {
                        SponsoredCardView(card: item)
                            .padding(.vertical, 4)
                    }
                }
            }
        }
    }
}

struct SponsoredView_Previews: PreviewProvider {
    static var previews: some View {
        SponsoredView()
    }
}
