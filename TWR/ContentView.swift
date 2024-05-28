//
//  ContentView.swift
//  TWR
//
//  Created by Jordan Guzman on 5/27/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("TWR Blue").ignoresSafeArea()
            VStack {
                Image("Logo")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            }
        }
//        .padding()
    }
}

#Preview {
    ContentView()
}
