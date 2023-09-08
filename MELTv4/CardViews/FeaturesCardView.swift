//
//  FeaturesCardView.swift
//  MELTv4
//
//  Created by James Sweeney on 9/7/23.
//

import SwiftUI

struct FeaturesCardView: View {
    var card: Card
    @State private var isShowingSettings: Bool = false
    
    var body: some View {
     
            Image(card.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .cornerRadius(10)
            
        }
    
}

struct FeaturesCardView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturesCardView(card: cardData[0])
    }
}
