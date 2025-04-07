//
//  Home.swift
//  Assessement1
//
//  Created by Vaibhav Upadhyay on 30/01/25.
//
import SwiftUI

struct Home: View {
    @State var selection: String = "Wedding"
    let filterOption: [String] = [
        "Wedding", "Decor", "Gift"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = #colorLiteral(red: 0.5882352941, green: 0.5098039216, blue: 0.7137254902, alpha: 1)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .normal)
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text(""), content: {
                    Picker(
                        selection: $selection,
                        content: {
                            ForEach(filterOption, id: \.self) { filter in
                                Text(filter).tag(filter)
                            }
                        },
                        label: {
                            Text("Segment buttons")
                        })
                    .labelsHidden()
                    .pickerStyle(.segmented)
                })
                
                Section{
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Need Help?")
                                .font(.largeTitle)
                            Text("Make an appointment or chat with us")
                                .font(.headline)
                        }
                        Spacer()
                        Image("calendar")
                            .font(.largeTitle)
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(primaryColor)
                            .frame(height: 100)
                    )
                    .foregroundStyle(.white)
                }
                
                Section(content: {
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack(spacing: 20) {
                            ForEach(HomeFlower.list) { flower in
                                VStack {
                                    Image(flower.image)
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                    Text(flower.title)
                                }
                            }
                        }
                        
                    })
                })
                
                Section(header:
                            Text("Popularity")
                    .foregroundStyle(.black)
                    .font(.title)) {
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            LazyHStack {
                                ForEach(1..<10) {_ in
                                    VStack(alignment: .leading) {
                                        Image("Rectangle_101")
                                            .font(.system(size: 150))
                                        Spacer()
                                        HStack {
                                            Text("Spark")
                                            Spacer()
                                            StarRating(rating: .constant(5), maxRating: 5)
                                        }
                                        Text("$90")
                                    }
                                }
                            }
                        })
                }
            }
            .padding(-20)
            .scrollContentBackground(.hidden)
            .navigationTitle("Welcome!")
            .navigationBarItems(trailing: NavigationLink(destination: ProfileView(), label: {
                Image(systemName: "person")
            }))
        }
        
    }
}

#Preview {
    Home()
}
