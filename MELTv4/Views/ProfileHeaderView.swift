//
//  ProfileHeaderView.swift
//  MELTv4
//
//  Created by James Sweeney on 8/19/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack {
            Text("Cookbook")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
            
            Spacer(minLength: 0)
        }
        .padding(.horizontal)
        .frame(height: 100)
        .background(Color.white)
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CookbookView()
    }
}
