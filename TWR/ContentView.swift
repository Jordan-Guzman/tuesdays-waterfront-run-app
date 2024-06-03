//
//  ContentView.swift
//  TWR
//
//  Created by Jordan Guzman on 5/27/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isActive: Bool = false
    
    var body: some View {
        ZStack {
            Color("TWR Blue").ignoresSafeArea()
            VStack {
                GeometryReader { geo in
                    Image("Logo")
                        .frame(height: geo.size.height * 0.6)
                        .frame(width: geo.size.width * 1)
                }
            }
            
            GeometryReader { geo in
                VStack {
                    Button("Sign In") {isActive = true}
                        .buttonStyle(.bordered)
                        .foregroundColor(Color("TWR Blue"))
                        .background(Color.white)
                        .cornerRadius(40)
                    
                    Button("Register") {isActive = true}
                        .buttonStyle(.bordered)
                        .foregroundColor(Color("TWR Blue"))
                        .background(Color.white)
                        .cornerRadius(40)
                }
                .frame(height: geo.size.height * 1.25)
                .frame(width: geo.size.width * 1)
            }
            
            if isActive {
                CredentialsPopUp(isActive: $isActive)
            }
        }
    }
}

#Preview {
    ContentView()
}
