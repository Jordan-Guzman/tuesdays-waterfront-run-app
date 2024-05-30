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
                    .position(x:UIScreen.main.bounds.width/2,
                              y:UIScreen.main.bounds.height/4)
                VStack {
                    Button("Sign In") {}
                        .buttonStyle(.bordered)
                        .foregroundColor(Color("TWR Blue"))
                        .background(Color.white)
                        .cornerRadius(40)
                    
                    Button("Register") {}
                        .buttonStyle(.bordered)
                        .foregroundColor(Color("TWR Blue"))
                        .background(Color.white)
                        .cornerRadius(40)
                }
                    .position(x:UIScreen.main.bounds.width/2,
                              y:UIScreen.main.bounds.height/12)
                
            }
        }
    }
}

#Preview {
    ContentView()
}
