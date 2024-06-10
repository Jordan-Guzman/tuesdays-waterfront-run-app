//
//  CalendarView.swift
//  TWR
//
//  Created by Software Development on 6/10/24.
//

import SwiftUI

struct CalendarView: View {
    @State var selectDate: Date = Date()
    var body: some View {
        VStack {
            Text(selectDate.formatted(date: .abbreviated, time: .omitted))
                .font(.system(size: 28))
                .bold()
                .foregroundColor(Color.accentColor)
                .padding()
                .animation(.spring(), value: selectDate)
                .frame(width: 500)
            Divider().frame(height: 1)
            DatePicker("Select Date", selection: $selectDate, displayedComponents: [.date])
                .padding(.horizontal)
                .datePickerStyle(.graphical)
            Divider()
        }
        .padding(.vertical, 100)
    }
}

#Preview {
    CalendarView()
}
