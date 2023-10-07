//
//  TrendingView.swift
//  MELTv4
//
//  Created by James Sweeney on 9/30/23.
//

import SwiftUI

struct TrendingView: View {
    
    @State private var search: String = ""
    @State private var isShowingSettings: Bool = false
    init() {
          UIScrollView.appearance().bounces = false
       }
    
    var card: [Card] = cardData
    
    
    var body: some View {
        NavigationView {
            ScrollView(.horizontal, showsIndicators: false) {
                VStack(alignment: .leading) {
                
                Text("Trending")
                    .font(.custom(
                            "Bodini 72",
                            fixedSize: 28))
                    .fontWeight(.bold)
                    .padding(.trailing, 260)
                
                    HStack {
                        ForEach(card.shuffled()) { item in
                            NavigationLink(destination: CardDetailView(card: item)) {
                                FeaturesCardView(card: item)
                                    .padding(.vertical, 4)
                            }
                        }
                        
                    }
                }
                .padding()
            }
        }
        
    }
}

struct TrendingView_Previews: PreviewProvider {
    static var previews: some View {
        TrendingView()
    }
}
