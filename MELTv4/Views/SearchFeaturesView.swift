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
                    

                
                TrendingView()
                
                SponsoredView()

            }
        }
    }
}

struct SearchFeaturesView_Previews: PreviewProvider {
    static var previews: some View {
        SearchFeaturesView()
    }
}
