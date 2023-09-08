//
//  SearchFeaturesView.swift
//  MELTv4
//
//  Created by James Sweeney on 9/7/23.
//

import SwiftUI

struct SearchFeaturesView: View {
    
    @State private var isShowingSettings: Bool = false
    
    var card: [Card] = cardData
    
    var body: some View {
        NavigationView {
            
            List {
                ScrollView(.horizontal, showsIndicators: false){
                    VStack(alignment: .leading) {
                        Text("Trending")
                            .font(.title2)
                            .fontWeight(.bold)
                        HStack {
                            ForEach(card.shuffled()) { item in
                                NavigationLink(destination: CardDetailView(card: item)) {
                                    FeaturesCardView(card: item)
                                        .padding(.vertical, 4)
                                }
                            }
                            
                        }
                    }
                }.frame(height: 200)
                
                    ScrollView {
                        VStack(alignment: .leading) {
                        Text("Sponsored")
                                .font(.title2)
                                .fontWeight(.bold)
                        ForEach(card.shuffled()) { item in
                            NavigationLink(destination: CardDetailView(card: item)) {
                                SponsoredCardView(card: item)
                                    .padding(.vertical, 4)
                            }
                        }
                    }
                }
            }
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }//: BUTTON
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
            
        }
        
        
    }
}
struct SearchFeaturesView_Previews: PreviewProvider {
    static var previews: some View {
        SearchFeaturesView()
    }
}
