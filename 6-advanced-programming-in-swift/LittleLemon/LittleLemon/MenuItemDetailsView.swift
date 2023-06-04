//
//  MenuItemDetailsView.swift
//  LittleLemon
//
//  Created by Mehmet Tarhan on 03/06/2023.
//

import SwiftUI

struct MenuItemDetailsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello, World!")
                NavigationLink(destination: Text("Destination")) {
                    Text("Navigate")
                }
            }
            .navigationTitle("Details")
        }
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView()
    }
}
