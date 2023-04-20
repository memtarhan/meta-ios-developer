//
//  ReservationForm.swift
//  ReservationForm
//
//  Created by Mehmet Tarhan on 20/04/2023.
//

import SwiftUI

struct ReservationForm: View {
    @State var customerName: String = ""

    var body: some View {
        Form {
            TextField("Type Your Name", text: $customerName, onEditingChanged: { edited in
                print("Editing started? \(edited)")
            })
            .onChange(of: customerName) { newValue in
                print("Changed to: \(newValue)")
            }
            .onSubmit {
                print("Submitted")
            }
        }
    }
}

struct ReservationForm_Previews: PreviewProvider {
    static var previews: some View {
        ReservationForm()
    }
}
