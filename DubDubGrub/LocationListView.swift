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
            Circle()
                .frame(width: 100, height: 100)
            
            VStack{
                Text("Title goes here")
                    .font(.body)
                HStack{
                    Circle()
                        .frame(width: 50, height: 50)
                    Circle()
                        .frame(width: 50, height: 50)
                    Circle()
                        .frame(width: 50, height: 50)
                }
                
            }
        }.navigationTitle("Test")
    }
}
