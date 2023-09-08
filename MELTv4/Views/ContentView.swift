//
//  ContentView.swift
//  MELTv4
//
//  Created by James Sweeney on 8/13/23.
//

import SwiftUI

struct ContentView: View {
    var card: [Card] = cardData
    
    var body: some View {
        TabView {
            CardSection()
                .tabItem({
                    Image("home")
                })
            CookbookView()
                .tabItem({
                    Image("cookbook")
                })
            SearchFeaturesView()
                .tabItem({
                    Image("search")
                })
            ProfileView()
                .tabItem({
                    Image("user")
                })
            }
        .edgesIgnoringSafeArea(.top)
        
    
    }
       
        
        
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
