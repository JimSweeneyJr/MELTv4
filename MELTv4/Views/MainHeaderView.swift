//
//  MainHeaderView.swift
//  MELTv4
//
//  Created by James Sweeney on 9/16/23.
//

import SwiftUI

struct MainHeaderView: View {
    
    @State private var search: String = ""
    
    
    var body: some View {
            
            VStack {
                HStack {
                    Button(action: {}) {
                        Image(systemName: "line.3.horizontal")
                            .padding(10)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                            .font(.system(size: 20, weight: .bold))
                            .imageScale(.large)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image("RachProfilePic")
                            .resizable()
                            .frame(width: 42, height: 42)
                            .clipShape(Circle())
                           
                    }
                    .padding(.top)
                    
                }
                .padding(.horizontal, 20)
               
        
                HStack {
                    Image(systemName: "magnifyingglass")
                        .padding(.trailing, 8)
                    TextField("Find your next meal", text: $search)
                }
                .font(.subheadline)
                .padding(12)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 24)
                
                
                SelectScrollNav()
                    .padding(.bottom, 10)
                    .padding(.top, 10)
                
                Divider()
                
        }
        .frame(height: 30, alignment: .center)
        .padding(.bottom, 15)
        
    }
    
}

struct MainHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MainHeaderView()
    }
}
