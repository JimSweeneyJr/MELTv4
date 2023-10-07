//
//  NavButtons.swift
//  MELTv4
//
//  Created by James Sweeney on 10/7/23.
//

import SwiftUI

struct NavButtons: View {
    
    var name: String
    var image: String
    @Binding var selectedMenu: String

    var body: some View {
        Button(action: {}, label: {
            
            HStack(spacing: 15){
                
            }
        })
    }
}

struct NavButtons_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
