//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by Christian Skorobogatow on 17/6/21.
//

import SwiftUI

struct LocationDetailView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 16){
                Image("default-banner-asset")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 120)
                 
                HStack{
                    Label("123 Main Street", systemImage: "mappin.and.ellipse")
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)
                    
                    Spacer()
                }
                
                Text("This is a test description. This is a test description. This is a test description. This is a test description. This is a test description. This is a test description. ")
                    .lineLimit(3)
                    .minimumScaleFactor(0.75)
                    .padding(.horizontal)
                
                
                ZStack{
                    Capsule()
                        .frame(height: 80)
                        .foregroundColor(Color(.secondarySystemBackground))
                    
                    HStack{
                        LocationActionButton(color: .brandPrimary, imageName: "location.fill")
                    }
                    
                }
                .padding(.horizontal)
                
                Spacer()
                
            }
            .navigationTitle("Location Name")
            .navigationBarTitleDisplayMode(.inline)
        }
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
                .foregroundColor(.white)
                .frame(width: 22, height: 22)
        }
    }
}
