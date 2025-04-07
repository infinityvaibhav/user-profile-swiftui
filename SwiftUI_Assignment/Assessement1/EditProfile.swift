//
//  Profile.swift
//  Assessement1
//
//  Created by Vaibhav Upadhyay on 30/01/25.
//
import SwiftUI

struct EditProfile: View {
    
    @State var name: String = "Melissa Peters"
    @State var email: String = "melpeters@gmail.com"
    @State var password: String = "jndflndflk nfld"
    @State var selectedDate: Date = Date(timeInterval: 801253028000, since: Date())
    let startingDate = Calendar.current.date(from: DateComponents(year: 1985)) ?? Date()
    let end = Date()
    
    @State var countrySelection: String = "India"
    let countryOptions: [String] = [
        "India", "USA", "Argentina"
    ]
    
    var body: some View {
        NavigationStack {
            Form() {
                Section {
                    Image("profile_pic")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(maxWidth: .infinity, maxHeight: 150, alignment: .center)
                }
                
                Section(header: Text("Name")
                    .foregroundStyle(.black)
                    .fontWeight(.bold)
                ) {
                        TextField("Name", text: $name)
                            .textFieldStyle(.roundedBorder)
                    }
                
                Section(header: Text("Email")
                    .foregroundStyle(.black)
                    .fontWeight(.bold)
                ) {
                        TextField("Email", text: $email)
                            .textFieldStyle(.roundedBorder)
                    }
                Section(header: Text("Password")
                    .foregroundStyle(.black)
                    .fontWeight(.bold)
                ) {
                        SecureField("Password", text: $password)
                            .textFieldStyle(.roundedBorder)
                    }
                Section(header: Text("Date Of Birth")
                    .foregroundStyle(.black)
                    .fontWeight(.bold)
                ) {
                        DatePicker("", selection: $selectedDate, in: startingDate...end, displayedComponents: [.date])
                            .datePickerStyle(.compact)
                            .labelsHidden()
                    }
                Section(header: Text("Country/Region")
                    .foregroundStyle(.black)
                    .fontWeight(.bold)
                ) {
                        Picker("Coutry/Region", selection: $countrySelection, content: {
                            ForEach(countryOptions, id: \.self) { country in
                                Text(country)
                                    .foregroundStyle(.black)
                            }
                        }).labelsHidden()
                    }
                
            }
            .scrollContentBackground(.hidden)
            .navigationTitle("Edit Profile")
        }
    }
}

#Preview {
    EditProfile()
}
