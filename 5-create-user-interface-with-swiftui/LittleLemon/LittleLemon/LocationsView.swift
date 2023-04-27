//
//  LocationsView.swift
//  LittleLemon
//
//  Created by Mehmet Tarhan on 27/04/2023.
//

import SwiftUI

struct LocationsView: View {
    @EnvironmentObject var model: Model
    var body: some View {
        VStack {
            LittleLemonLogo() // 1
                .padding(.top, 50)

            Text(model.displayingReservationForm ? "Reservation Details" : "Select a location") // 2
                .padding([.leading, .trailing], 40)
                .padding([.top, .bottom], 8)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)

            NavigationView {
                List(model.restaurants, id: \.self) { restaurant in
                    NavigationLink(destination: ReservationForm(restaurant)) {
                        RestaurantView(restaurant)
                    }
                } // 3
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
        }
        .padding(.top, -10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView().environmentObject(Model())
    }
}
