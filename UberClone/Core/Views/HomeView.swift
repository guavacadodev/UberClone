//
//  HomeView.swift
//  UberClone
//
//  Created by Jake Woodall on 1/10/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        UberMapViewRepresentable()
            .ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}
