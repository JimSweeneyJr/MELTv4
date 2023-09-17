//
//  SearchFeaturesView.swift
//  MELTv4
//
//  Created by James Sweeney on 9/7/23.
//

import SwiftUI

struct SearchFeaturesView: View {
    
    @State private var search: String = ""
    @State private var isShowingSettings: Bool = false
    init() {
          UIScrollView.appearance().bounces = false
       }
    
    var card: [Card] = cardData
    
    var body: some View {
        
     
            
            NavigationView {
                VStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("Search my cookbook", text: $search)
                            .fontWeight(.bold)
                    }
                    .padding()
                    .background(Color.gray)
                    .opacity(0.4)
                    .cornerRadius(10)
                    .padding()
                    
                    
                    Text("Trending")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.trailing, 260)
                        .padding(.bottom, -80)
               
                        ScrollView(.horizontal, showsIndicators: false) {
                          
                                VStack(alignment: .leading) {
                                    
                                    HStack {
                                        ForEach(card.shuffled()) { item in
                                            NavigationLink(destination: CardDetailView(card: item)) {
                                                FeaturesCardView(card: item)
                                                    .padding(.vertical, 4)
                                            }
                                        }
                                    }
                                    
                                }
                    }
                        .padding()
                    
                    .frame(height: 250)
                        
                        Text("Sponsored")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.trailing, 230)
                        .padding(.top, -40)
                    
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
        
        }
    
    }

struct SearchFeaturesView_Previews: PreviewProvider {
    static var previews: some View {
        SearchFeaturesView()
    }
}
