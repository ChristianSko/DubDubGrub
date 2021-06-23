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
                Color(.secondarySystemBackground)
                    .frame(height: 138)
                    .cornerRadius(12)
                    .padding(.horizontal)
                
                HStack(spacing: 16) {
                    ZStack {
                        AvatarView(size: 84)
                            

                        Image(systemName: "square.and.pencil")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 14)
                            .foregroundColor(.white)
                            .offset(y: 38)
                        
                    }
                    .padding(.leading)
                    
                    VStack(spacing: 1){
                        TextField("First name", text: $firstName)
                            .font(.system(size: 32, weight: .bold))
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        
                        TextField("Last name", text: $lastName)
                            .font(.system(size: 32, weight: .bold))
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        
                        TextField("Company name", text: $companyName)
                            
                    }
                    .padding(.trailing)
    
                    
                }
                .padding()
            }
            
            VStack(alignment: .leading, spacing: 8){
                Text("Bio: ")
                    .font(.callout)
                    .foregroundColor(.secondary)
                +
                    Text("\(100 - bio.count)")
                    .bold()
                    .font(.callout)
                    .foregroundColor(bio.count <= 100 ? .brandPrimary : Color(.systemPink))
                +
                Text(" Characters Remain")
                    .font(.callout)
                    .foregroundColor(.secondary)
                
                
                TextEditor(text: $bio)
                    .frame(height: 100)
                    .border(Color.black)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.secondary, lineWidth: 1))
                    

            }
            .padding(.horizontal, 20)
            
            Spacer()
            
            Button  {
                
            } label: {
                Text("Create Profile")
                    .bold()
                    .frame(width: 280, height: 44)
                    .background(Color.brandPrimary)
                    .foregroundColor(.white)
                    .cornerRadius(8)
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
