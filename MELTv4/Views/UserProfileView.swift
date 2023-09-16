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
        
        
        ZStack {
            Color("myOlive")
                .ignoresSafeArea(.all)
            VStack {

                HStack {
                    
                    HeaderView()
                        .padding(.top, 25)
                }

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


            }
        }//: NAVIGATION



   }
    
}

extension Color {
    static let myTeal = Color("myTeal")
    static let darkPink = Color(red: 208 / 255, green: 45 / 255, blue: 208 / 255)
}


struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
