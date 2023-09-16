//
//  HeaderView.swift
//  MELTv4
//
//  Created by James Sweeney on 9/15/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            Image("Steak")
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
        .frame(width: 480, height: 320, alignment: .center)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
    }
}
