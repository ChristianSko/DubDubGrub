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
                    NavigationLink(
                        destination: LocationDetailView(), label: {
                            LocationCellView()
                        })
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

