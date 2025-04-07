//
//  TabView.swift
//  Assessement1
//
//  Created by Vaibhav Upadhyay on 31/01/25.
//
import SwiftUI

struct MyTabView: View {
    
    @State private var selectedIndex: Int = 0

    init() {
       let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.backgroundImage = UIImage(named: "tabView_background")
        tabBarAppearance.backgroundImageContentMode = .scaleAspectFill
       UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
       UITabBar.appearance().standardAppearance = tabBarAppearance
        
   }
    
    var body: some View {

        ZStack {
            TabView(selection: $selectedIndex) {
                
                Home()
                    .tabItem {
                    Text("Home view")
                    Image(systemName: "house.fill")
                        .renderingMode(.template)
                }
                .tag(0)
                
                SettingsView()
                    .tabItem {
                        Label("Profile", systemImage: "gear")
                    }
                    .tag(1)
            }
            
            VStack {
                Spacer()
                Button {
                    // Action
                } label: {
                    Image(systemName: "plus")
                        .font(.title.weight(.semibold))
                        .padding()
                        .background(navyBlue)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                    
                }
                .padding()
            }
        }

        }
        
}

#Preview {
    MyTabView()
}
