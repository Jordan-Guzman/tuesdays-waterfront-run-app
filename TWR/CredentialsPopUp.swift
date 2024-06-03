//
//  CredentialsPopUp.swift
//  TWR
//
//  Created by Software Development on 5/31/24.
//

import SwiftUI

struct CredentialsPopUp: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var offset: CGFloat = 1000
    @Binding var isActive: Bool
    
    var body: some View {
        ZStack {
            Color(.white)
            
            VStack {
                Text("Lorem Ipsum")
                    .padding()
                TextField(
                    "Email",
                    text: $email
                )
                .padding()
                TextField(
                    "Password", 
                    text: $password
                )
                .padding()
                Button("Submit") {}
                    .buttonStyle(.bordered)
                    .foregroundColor(Color.white)
                    .background(Color("TWR Blue"))
                    .cornerRadius(40)
                    .padding()
            }
            .padding()
        }
        .fixedSize(horizontal: false, vertical: true)
        .cornerRadius(10)
        .padding()
        .overlay {
            VStack {
                HStack {
                    Spacer()
                    Button {
                        close()
                    } label: {
                        Image(systemName: "xmark")
                            .font(.title2)
                            .fontWeight(.medium)
                    }
                    .tint(.black)
                }
                .padding()
                Spacer()
            }
            .padding()
        }
        .padding()
        .shadow(radius: 20)
        .offset(x: 0, y: offset)
        .onAppear {
            withAnimation(.spring()) {
                offset = 0
            }
        }
    }
    
    func close() {
        withAnimation(.spring()) {
            offset = 1000
        }
        isActive = false
    }
}

#Preview {
    CredentialsPopUp(isActive: .constant(true))
}
