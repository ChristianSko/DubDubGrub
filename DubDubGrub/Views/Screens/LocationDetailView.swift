//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by Christian Skorobogatow on 17/6/21.
//

import SwiftUI

struct LocationDetailView: View {
    
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    
    var body: some View {
        VStack(spacing: 16){
            BanneImageView(imageName: "default-banner-asset")
            
            HStack{
                AddressView(adressString: "123 Main Street", address: "mappin.and.ellipse")
                
                Spacer()
            }
            
            DescriptionView(text: "This is a test description. This is a test description. This is a test description. This is a test description. This is a test description. This is a test description. ")
            
            
            ZStack{
                Capsule()
                    .frame(height: 80)
                    .foregroundColor(Color(.secondarySystemBackground))
                
                HStack(spacing: 20){
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "location.fill")
                    }
                    
                    Link(destination: URL(string: "https://www.apple.com")!, label: {
                        LocationActionButton(color: .brandPrimary, imageName: "network")
                    })
                    
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "phone.fill")
                    }
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "person.fill.checkmark")
                    }
                    
                }
                
            }
            .padding(.horizontal)
            
            Text("Who is here?")
                .bold()
                .font(.title2)
            
            ScrollView {
                LazyVGrid(columns: columns, content: {
                    firstNameAvatarView(firstName: "Chris")
                    firstNameAvatarView(firstName: "Chris")
                    firstNameAvatarView(firstName: "Chris")
                    firstNameAvatarView(firstName: "Chris")
                    firstNameAvatarView(firstName: "Chris")
                    firstNameAvatarView(firstName: "Chris")
                    
                    
                })
            }
            
            
            
        }
        .navigationTitle("Location Name")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView()
    }
}

struct LocationActionButton: View {
    
    var color: Color
    var imageName: String
    
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(color)
                .frame(width: 60, height: 60)
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .frame(width: 22, height: 22)
        }
    }
}

struct firstNameAvatarView: View {
    
    var firstName: String
    
    var body: some View {
        VStack{
            AvatarView(size: 64)
            
            Text(firstName)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.75)
        }
    }
}

struct BanneImageView: View {
    
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(height: 120)
    }
}

struct AddressView: View {
    
    let adressString: String
    let address: String
    
    var body: some View {
        Label(address, systemImage: adressString)
            .font(.caption)
            .foregroundColor(.secondary)
            .padding(.horizontal)
    }
}

struct DescriptionView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .lineLimit(3)
            .frame(height: 70)
            .minimumScaleFactor(0.75)
            .padding(.horizontal)
    }
}
