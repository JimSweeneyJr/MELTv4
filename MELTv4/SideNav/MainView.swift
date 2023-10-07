//
//  MainViee.swift
//  MELTv4
//
//  Created by James Sweeney on 10/6/23.
//

import SwiftUI

struct MainView: View {
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    
    var body: some View {
        HStack(spacing: 0) {
            
            Drawer()
            
            TabView {
                
                Text("Home")
            }
            .frame(width: UIScreen.main.bounds.width)
        }
        .frame(width: UIScreen.main.bounds.width)
        .offset(x: 125)
        
        
    }
}

struct MainViee_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
