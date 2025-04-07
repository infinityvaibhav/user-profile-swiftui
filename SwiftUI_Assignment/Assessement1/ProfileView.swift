//
//  ProfileView.swift
//  Assessement1
//
//  Created by Vaibhav Upadhyay on 03/02/25.
//

import SwiftUI

struct ProfileView: View {
    
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    
    var body: some View {
        VStack {
            // Background Image
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .clipped()
                .overlay(
                    Circle()
                        .stroke(Color.gray, lineWidth: 3)
                        .frame(width: 110, height: 110)
                        .offset(y: 100)
                )
                .overlay(
                    Image("profile_pic")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 100, height: 100)
                        .offset(y: 100)
                )
            
            Spacer().frame(height: 60)
            
            // User Information
            Text("Melissa Peters")
                .font(.system(size: 18))
                .foregroundStyle(navyBlue)
                .fontWeight(.bold)
            
            Text("Interior Designer")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            HStack(spacing: 4) {
                Image(systemName: "location")
                    .foregroundColor(.gray)
                Text("Lagos, Nigeria")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer().frame(height: 20)
            
            // Stats
            HStack {
                VStack {
                    Text("122")
                        .font(.system(size: CGFloat(fontSize24)))
                        .fontWeight(.bold)
                        .foregroundStyle(navyBlue)
                    Text("followers")
                        .font(.caption)
                }
                
                Spacer()
                
                VStack {
                    Text("67")
                        .font(.system(size: CGFloat(fontSize24)))
                        .fontWeight(.bold)
                        .foregroundStyle(navyBlue)
                    Text("following")
                        .font(.caption)
                }
                
                Spacer()
                
                VStack {
                    Text("37K")
                        .font(.system(size: CGFloat(fontSize24)))
                        .fontWeight(.bold)
                        .foregroundStyle(navyBlue)
                    Text("likes")
                        .font(.caption)
                }
            }
            .padding(.horizontal, 40)
            
            Spacer().frame(height: 20)
            
            // Buttons
            HStack(spacing: 20) {
                NavigationLink(destination: EditProfile(), label: {
                    Text("Edit profile")
                        .font(.system(size: CGFloat(fontSize15)))
                        .fontWeight(.bold)
                        .padding()
                        .frame(width: 124, height: 35)
                        .background(navyBlue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
                
                Button(action: {}) {
                    Text("Add friends")
                        .font(.system(size: CGFloat(fontSize15)))
                        .fontWeight(.bold)
                        .padding()
                        .frame(width: 124, height: 35)
                        .background(navyBlue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal, 20)
            
            Spacer().frame(height: 30)
            
            // Photos and Likes Tabs
            HStack {
                Text("Photos")
                    .font(.headline)
                    .foregroundColor(navyBlue)
                
                Spacer()
                
                Text("Likes")
                    .font(.headline)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 80)
            
            Divider()
                .frame(width: 340)
            
            // Photo Grid
            ScrollView {
                LazyVGrid(columns: columns, spacing: 15) {
                    ForEach(4..<10) { index in
                        Image("Rectangle_\(index)")
                            .resizable()
                            .frame(width: 110, height: 160)
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal, 20)
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
