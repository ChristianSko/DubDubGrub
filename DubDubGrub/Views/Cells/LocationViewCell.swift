//
//  LocationViewCell.swift
//  DubDubGrub
//
//  Created by Christian Skorobogatow on 24/6/21.
//

import SwiftUI

struct LocationCellView: View {
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
                        AvatarView(size: 35)
                    }
                }
            }
            .padding(.leading)
        }.navigationTitle("Test")
    }
}

struct LocationCellView_Previews: PreviewProvider {
    static var previews: some View {
        LocationCellView()
    }
}
