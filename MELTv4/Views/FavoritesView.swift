//
//  FavoritesView.swift
//  MELTv4
//
//  Created by James Sweeney on 8/22/23.
//

import SwiftUI

struct FavoritesView: View {
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
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
