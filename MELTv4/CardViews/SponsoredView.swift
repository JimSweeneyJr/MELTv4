//
//  SponsoredView.swift
//  MELTv4
//
//  Created by James Sweeney on 9/30/23.
//

import SwiftUI

struct SponsoredView: View {
    
    @State private var search: String = ""
    @State private var isShowingSettings: Bool = false
    init() {
          UIScrollView.appearance().bounces = false
       }
    
    var card: [Card] = cardData
    
    
    var body: some View {
        ScrollView {
            Text("Sponsored")
                .font(.custom(
                        "Bodini 72",
                        fixedSize: 28))
                .fontWeight(.bold)
                .padding(.trailing, 260)
    
        
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
