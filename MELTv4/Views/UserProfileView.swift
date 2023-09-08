//
//  ProfileView.swift
//  MELTv4
//
//  Created by James Sweeney on 8/13/23.
//

import SwiftUI

struct ProfileView: View {
    
    @State var index = 0
    var card: [Card] = cardData
    
    @State private var isShowingSettings: Bool = false
    
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
                        .shadow(color: Color.black.opacity(0.1),radius: 5, x:8, y:8)
                        .shadow(color: Color.white.opacity(0.5),radius: 5, x: -8, y: -8)
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
                
                Spacer(minLength: 0)
                
                Button(action: {
                    
                    self.index = 1
                    
                }) {
                    
                    Text("Friends")
                        .foregroundColor(self.index == 1 ? Color.white : .gray)
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 1 ? Color.blue : Color.clear)
                        .cornerRadius(10)
                }
                
                Spacer(minLength: 0)
                
                Button(action: {
                    
                    self.index = 2
                    
                }) {
                    
                    Text("Settings")
                        .foregroundColor(self.index == 2 ? Color.white : .gray)
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 2 ? Color.blue : Color.clear)
                        .cornerRadius(10)
                }
                
            }
            
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            //                .background(Color.)
            .cornerRadius(8)
            .shadow(color: Color.black.opacity(0.1),radius: 5, x:8, y:8)
            .shadow(color: Color.white.opacity(0.5),radius: 5, x: -8, y: -8)
            .padding(.horizontal)
            .padding(.top, 25)
            
            NavigationView {
                List {
                    ForEach(card.shuffled()) { item in
                        NavigationLink(destination: CardDetailView(card: item)) {
                            CardRowView(card: item)
                                .padding(.vertical, 4)
                        }
                    }
                }
                .navigationTitle("Favorites")
                
                
            }
            
            
        }//: NAVIGATION
        
        
        
    }
    
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
