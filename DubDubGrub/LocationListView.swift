//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Christian Skorobogatow on 6/6/21.
//

import SwiftUI

struct LocationListView: View {
    var body: some View {
        NavigationView{
            List {
                ForEach(0..<10) { cell in
                    CellView()
                }
            }
            .navigationTitle("Grub Spots")
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}

struct CellView: View {
    var body: some View {
        HStack{
            Image("default-square-asset")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.vertical, 8)
            
            VStack{
                Text("Location goes here")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)
                
                HStack{
                    ForEach(0..<3){ user in
                        AvatarView()
                    }
                }
            }
            .padding(.leading)
        }.navigationTitle("Test")
    }
}

struct AvatarView: View {
    var body: some View {
        Image("default-avatar")
            .resizable()
            .scaledToFit()
            .frame(width: 35, height: 35)
            .clipShape(Circle())
    }
}
