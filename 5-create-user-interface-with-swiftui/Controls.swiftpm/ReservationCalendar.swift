//
//  ReservationCalendar.swift
//  Controls
//
//  Created by Mehmet Tarhan on 25/04/2023.
//

import SwiftUI

struct ReservationCalendar: View {
    @State private var reservationDate = Date()

    var body: some View {
        Form {
            Section {
                HStack {
                    DatePicker(selection: $reservationDate, in: Date()..., displayedComponents: [.date, .hourAndMinute]) {
                    }
                    Button(action: {
                        print("do something")
                    }) {
                        HStack {
                            Image(systemName: "arrow.right.circle")
                            Text("Done")
                        }
                    }
                    .padding()
                }
                Text("Date is \(reservationDate.formatted(date: .long, time: .complete))")
            }
        }
    }
}

struct ReservationCalendar_Previews: PreviewProvider {
    static var previews: some View {
        ReservationCalendar()
    }
}
