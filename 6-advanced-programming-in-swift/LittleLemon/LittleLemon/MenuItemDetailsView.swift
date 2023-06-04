//
//  MenuItemDetailsView.swift
//  LittleLemon
//
//  Created by Mehmet Tarhan on 03/06/2023.
//

import SwiftUI

struct MenuItemDetailsView: View {
    @Binding var item: MenuItem

    var body: some View {
        VStack {
            Text(item.title)
        }
        .navigationTitle("Details")
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView(item: .constant(MenuItem.sample))
    }
}
