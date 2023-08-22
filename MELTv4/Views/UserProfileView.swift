//
//  ProfileView.swift
//  MELTv4
//
//  Created by James Sweeney on 8/13/23.
//

import SwiftUI

struct ProfileView: View {
    
    @State var index = 0
    
    var body: some View {
        VStack {
            HStack(spacing: 15) {
                Button(action: {
                    
                }) {
                    
                    Image(systemName: "chevron.left")
                        .font(.system(size: 22))
                        .foregroundColor(.black)
                    
                }
                
                Text("Profile")
                    .font(.title)
                
                Spacer(minLength: 0)
                
                Button(action: {
                    
                }) {
                    Text("Add")
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 25)
                        .background(.blue)
                        .cornerRadius(10)
                    
                }
                
            }
            .padding()
            
            HStack {
                
                VStack(spacing: 0) {
                    
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 100, height: 3)
                    
                    Image("RachProfilePic")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding(.top, 6)
                        .padding(.bottom, 4)
                        .padding(.horizontal, 8)
                        .cornerRadius(30)
                }
                
                VStack(alignment: .leading, spacing: 12) {
                    
                    Text("Rachael Clark")
                        .font(.title2)
                        .foregroundColor(Color.black.opacity(0.8))
                    Text("Joined August, 2023")
                        .padding(.top, 3)
                        .foregroundColor(Color.black.opacity(0.7))
                    Text("2,641 Likes")
                        .padding(.top, -10)
                        .foregroundColor(Color.black.opacity(0.7))
                }
                .padding(.leading, 10)
                Spacer(minLength: 0)
                
            }
            .padding(.horizontal, 20)
            .padding(.top, 10)
            
            //MARK: Tab Items
            
            HStack {
                
                Button(action: {
                    
                    self.index = 0

                }) {
                    
                    Text("Favorites")
                        .foregroundColor(self.index == 0 ? Color.white : .gray)
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 0 ? Color.blue : Color.clear)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    
                    self.index = 1

                }) {
                    
                    Text("Friends")
                        .foregroundColor(self.index == 0 ? Color.white : .gray)
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 0 ? Color.blue : Color.clear)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    
                    self.index = 2

                }) {
                    
                    Text("Settings")
                        .foregroundColor(self.index == 0 ? Color.white : .gray)
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 0 ? Color.blue : Color.clear)
                        .cornerRadius(10)
                }
                
            }
            
            Spacer(minLength: 0)
                
        }
        .background(Color.white).edgesIgnoringSafeArea(.all)
    }
}
struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
