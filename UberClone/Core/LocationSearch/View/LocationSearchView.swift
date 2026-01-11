//
//  LocationSearchView.swift
//  UberClone
//
//  Created by Jake Woodall on 1/11/26.
//

import SwiftUI

struct LocationSearchView: View {
    @State private var startLocationText = ""
    @State private var destinationLocationText = ""
    var body: some View {
        VStack {
            // Header View
            HStack {
                VStack {
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 6, height: 6)
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1, height: 24)
                    Rectangle()
                        .fill(.black)
                        .frame(width: 6, height: 6)
                }
                VStack {
                    TextField("Current Location", text: $startLocationText)
                        .padding(.leading, 5)
                        .frame(height: 32)
                        .background(Color(.systemGroupedBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding(.trailing)
                    TextField("Where to?", text: $destinationLocationText)
                        .padding(.leading, 5)
                        .frame(height: 32)
                        .background(Color(.systemGray4))
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding(.trailing)
                }
            }
            .padding(10)
            .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.black, lineWidth: 1))
            .padding(10)
            .padding(.top, 64)
            Divider()
                .padding(.vertical)
            // List View
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(0 ..< 4, id: \.self) { _ in
                        LocationSearchResultCell()
                    }
                }
            }
        }
        .background(.white)
    }
}

#Preview {
    LocationSearchView()
}
