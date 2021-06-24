//
//  ProfileVIew.swift
//  DubDubGrub
//
//  Created by Christian Skorobogatow on 6/6/21.
//

import SwiftUI

struct ProfileVIew: View {
    @State var firstName    = ""
    @State var lastName     = ""
    @State var companyName  = ""
    @State var bio    = ""
    
    var body: some View {
        VStack{
            ZStack{
                NameBackgroundView()
                
                HStack(spacing: 16) {
                    ZStack {
                        AvatarView(size: 84)
                        EditImage()
                    }
                    .padding(.leading)
                    
                    VStack(spacing: 1){
                        TextField("First name", text: $firstName)
                            .profileNameText()
                        
                        TextField("Last name", text: $lastName)
                            .profileNameText()
                        
                        TextField("Company name", text: $companyName)
                        
                    }
                    .padding(.trailing)
                    
                    
                }
                .padding()
            }
            
            VStack(alignment: .leading, spacing: 8){
                
                CharactersRemain(currentCount: bio.count)
                
                TextEditor(text: $bio)
                    .frame(height: 100)
                    .border(Color.black)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.secondary, lineWidth: 1))

            }
            .padding(.horizontal, 20)
            
            Spacer()
            
            Button  {
                
            } label: {
                DDGButton(title: "Create Profile")
            }
        }
        .navigationTitle("Profile")
    }
}

struct ProfileVIew_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ProfileVIew(firstName: "", lastName: "", companyName: "", bio: "")
        }
    }
}



struct NameBackgroundView: View {
    var body: some View {
        Color(.secondarySystemBackground)
            .frame(height: 138)
            .cornerRadius(12)
            .padding(.horizontal)
    }
}

struct EditImage: View {
    var body: some View {
        Image(systemName: "square.and.pencil")
            .resizable()
            .scaledToFit()
            .frame(width: 14, height: 14)
            .foregroundColor(.white)
            .offset(y: 38)
    }
}


struct CharactersRemain: View {
    
    var currentCount: Int
    
    var body: some View {
        
        Text("Bio: ")
            .font(.callout)
            .foregroundColor(.secondary)
            +
            Text("\(100 - currentCount)")
            .bold()
            .font(.callout)
            .foregroundColor(currentCount <= 100 ? .brandPrimary : Color(.systemPink))
            +
            Text(" Characters Remain")
            .font(.callout)
            .foregroundColor(.secondary)
    }
}
