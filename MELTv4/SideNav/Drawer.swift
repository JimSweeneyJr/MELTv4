//
//  Drawer.swift
//  MELTv4
//
//  Created by James Sweeney on 10/6/23.
//

import SwiftUI

struct Drawer: View {
    var body: some View {
        VStack {
            
            HStack {
                Image("RachProfilePic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 65, height: 65)
                    .clipShape(Circle())
                
                Spacer()
            }
            .padding()
            
            VStack(alignment: .leading, spacing: 10, content: {
                
                Text("Hello")
                    .font(.title2)
                
                Text("Rachael Clark")
                    .font(.title)
                    .fontWeight(.heavy)
            })
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            .padding(.top, 5)
            
            NavButtons()
                   
            Spacer()
            
        }
        .frame(width: 250)
        .background(Color("myDarkOrange")
            .ignoresSafeArea(.all, edges: .vertical)
        )
    }
}

struct Drawer_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
