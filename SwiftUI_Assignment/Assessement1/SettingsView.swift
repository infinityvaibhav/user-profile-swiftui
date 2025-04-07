//
//  Settings.swift
//  Assessement1
//
//  Created by Vaibhav Upadhyay on 30/01/25.
//
import SwiftUI

struct SettingsView: View {
    
    var body: some View {
        NavigationStack {
            List() {
                
                ForEach(Setting.groupedSettings.keys.sorted(), id: \.self) { type in
                    Section(header: Text(type)) {
                        ForEach(Setting.groupedSettings[type] ?? []) { menu in
                            
                            /// Currenty we only have Edit profile screen otherwise we can pass list of screens to open and and make navigation dynamic
                            if menu.name == "Edit Profile" {
                                NavigationLink(destination: EditProfile()) {
                                    SettigsCell(menu: menu)
                                }
                            } else {
                                SettigsCell(menu: menu)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
}

struct SettigsCell: View {
    let menu: Setting
    var body: some View {
        HStack {
            Image(systemName: menu.iconName)
            Text(menu.name)
        }
    }
}
