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
            Text("This is only a test")
            
                .padding()
                .frame(width: 300, height: 135, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [Color("myYellow"), Color("myOrange")]),
                                           startPoint: .leading, endPoint: .trailing))
                .cornerRadius(12)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
                .foregroundColor(Color.white)
            
            Image("RachProfilePic")
                .resizable()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(Circle())
                .offset(x: -150)
        }
    }
}
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
    }
}
