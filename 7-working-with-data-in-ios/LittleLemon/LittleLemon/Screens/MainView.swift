//
//  MainView.swift
//  LittleLemon
//
//  Created by Mehmet Tarhan on 12.12.2024.
//

import CoreData
import SwiftUI

struct MainView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @StateObject var model = Model()
    @State var tabSelection = 0
    @State var previousTabSelection = -1 // any invalid value

    var body: some View {
        TabView(selection: $model.tabViewSelectedIndex) {
            LocationsView()
                .tag(0)
                .tabItem {
                    if !model.displayingReservationForm {
                        Label("Locations", systemImage: "fork.knife")
                    }
                }
                .onAppear {
                    tabSelection = 0
                }

            OurDishes()
                .tag(1)
                .tabItem {
                    if !model.displayingReservationForm {
                        Label("Our Dishes", systemImage: "fork.knife.circle")
                    }
                }
                .onAppear {
                    tabSelection = 1
                }
//                .environmentObject(viewContext)

            ReservationView()
                .tag(2)
                .tabItem {
                    if !model.displayingReservationForm {
                        Label("Reservation", systemImage: "square.and.pencil")
                    }
                }
                .onAppear {
                    tabSelection = 2
                }
        }
        .id(tabSelection)
        .environmentObject(model)
    }
}

#Preview {
    MainView().environmentObject(Model())
}
