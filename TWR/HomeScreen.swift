//
//  HomeScreen.swift
//  TWR
//
//  Created by Software Development on 6/5/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ZStack {
            Color("TWR Blue").ignoresSafeArea()
            CalendarView()
        }
//        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    HomeScreen()
}
