//
//  CookbookView.swift
//  MELTv4
//
//  Created by James Sweeney on 8/13/23.
//

import SwiftUI

struct CookbookView: View {
    
    var body: some View {
        
        ScrollView {
            
            LazyVStack(alignment: .leading, spacing: 15, pinnedViews: [.sectionHeaders], content: {
                
                Section(header: ProfileHeaderView()) {
                    ForEach(cardData) { card in
                        CookbookCardView(card: card)
                
                    }
                    Divider()
                        .padding(.top)
                }
            })
        }
        .overlay(
        
            Color.white
                .frame(height:
                        UIApplication.shared.windows.first?
                    .safeAreaInsets.top)
                .ignoresSafeArea(.all, edges: .top)
            ,alignment: .top
        
        )
    }
}

struct CookbookView_Previews: PreviewProvider {
    static var previews: some View {
        CookbookView()
    }
}
