//
//  CookbookView.swift
//  MELTv4
//
//  Created by James Sweeney on 8/13/23.
//

import SwiftUI

struct CookbookView: View {
    
    @State private var search: String = ""
    @State private var isShowingSettings: Bool = false
    
    var card: [Card] = cardData
    
    var body: some View {
        ZStack {
            
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
                
                
                NavigationView {
                    
                    List {
                        ForEach(card.shuffled()) { item in
                            NavigationLink(destination: CardDetailView(card: item)) {
                                CardRowView(card: item)
                                    .padding(.vertical, 4)
                            }
                            
                        }
                    }
                    .navigationTitle("Cookbook")
                    
                }
            }
            
        }
    }
    
}




struct CookbookView_Previews: PreviewProvider {
    static var previews: some View {
        CookbookView(card: cardData)
    }
}


//ScrollView {
//
//    LazyVStack(alignment: .leading, spacing: 15, pinnedViews: [.sectionHeaders], content: {
//
//        Section(header: ProfileHeaderView()) {
//            ForEach(cardData) { card in
//                CookbookCardView(card: card)
//
//            }
//            Divider()
//                .padding(.top)
//        }
//    })
//}
//.overlay(
//
//    Color.white
//        .frame(height:
//                UIApplication.shared.windows.first?
//            .safeAreaInsets.top)
//        .ignoresSafeArea(.all, edges: .top)
//    ,alignment: .top
//
//)
