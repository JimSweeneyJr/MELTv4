//
//  MainHeaderView.swift
//  MELTv4
//
//  Created by James Sweeney on 9/16/23.
//

import SwiftUI

struct MainHeaderView: View {
    var body: some View {
            
            VStack {
                HStack {
                    Button(action: {}) {
                        Image(systemName: "line.3.horizontal")
                            .padding(10)
                            .background(Color("myYellow"))
                            .cornerRadius(8)
                            .font(.system(size: 20, weight: .bold))
                            .imageScale(.large)
                            .foregroundColor(Color("myBlue"))
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image("RachProfilePic")
                            .resizable()
                            .frame(width: 42, height: 42)
                            .clipShape(Circle())
                           
                    }
                    
                }
                .padding(.horizontal, 3)
                
            
        }
        .frame(height: 30, alignment: .center)
        
        
    }
    
}

struct MainHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MainHeaderView()
    }
}
