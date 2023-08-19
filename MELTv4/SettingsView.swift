//
//  SettingsView.swift
//  MELTv4
//
//  Created by James Sweeney on 8/13/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            GroupBox {
                Form {
                    DisclosureGroup("Lifestyle") {
                        Toggle(isOn: .constant(true),
                               label: {
                            Text("Vegetarian")
                            
                        })
                        Toggle(isOn: .constant(true),
                               label: {
                            Text("Vegan")
                        })
                        Toggle(isOn: .constant(true),
                               label: {
                            Text("Pescatarian")
                        })
                        
                    }
    
                    DisclosureGroup("Allergies") {
                        Toggle(isOn: .constant(true),
                               label: {
                            Text("Nuts")
                            
                        })
                        Toggle(isOn: .constant(true),
                               label: {
                            Text("Dairy")
                        })
                        Toggle(isOn: .constant(true),
                               label: {
                            Text("Seafood")
                        })
                        Toggle(isOn: .constant(true),
                               label: {
                            Text("Meat")
                        })
                        
                    }

                    DisclosureGroup("Meal") {
                        Toggle(isOn: .constant(true),
                               label: {
                            Text("Breakfast")
                        })
                        Toggle(isOn: .constant(true),
                               label: {
                            Text("Brunch")
                        })
                        Toggle(isOn: .constant(true),
                               label: {
                            Text("Lunch")
                        })
                        Toggle(isOn: .constant(true),
                               label: {
                            Text("Dinner")
                        })
                        Toggle(isOn: .constant(true),
                               label: {
                            Text("Dessert")
                        })
                        
                    }
                    DisclosureGroup("Meat") {
                        Toggle(isOn: .constant(true),
                               label: {
                            Text("Red Meat")
                        })
                        Toggle(isOn: .constant(true),
                               label: {
                            Text("Poultry")
                        })
                        Toggle(isOn: .constant(true),
                               label: {
                            Text("Seafood")
                        })
                        
                    }
                }
            }
            
            .font(Font.system(.body).bold())
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
