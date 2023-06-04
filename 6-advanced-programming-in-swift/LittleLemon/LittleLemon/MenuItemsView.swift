//
//  MenuItemsView.swift
//  LittleLemon
//
//  Created by Mehmet Tarhan on 03/06/2023.
//

import SwiftUI

struct MenuItem: Identifiable {
    let id = UUID()
    let title: String
}

struct MenuSection: Identifiable {
    let id = UUID()
    let title: String
    let items: [MenuItem]
}

let menuData = [
    MenuSection(title: "Food", items: (1 ... 10).map { MenuItem(title: "Food \($0 + 1)") }),
    MenuSection(title: "Drinks", items: (1 ... 10).map { MenuItem(title: "Drink \($0 + 1)") }),
    MenuSection(title: "Dessert", items: (1 ... 10).map { MenuItem(title: "Dessert \($0 + 1)") }),
]

struct MenuItemsView: View {
    @State private var shouldDisplayFilters = false

    let data = (1 ... 10).map { "Item \($0)" }

    private let menu = menuData

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]

    var body: some View {
        NavigationStack {
            List(menu) { menuSection in
                Section(menuSection.title) {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(menuSection.items) { item in
                            ZStack {
                                VStack {
                                    ZStack {
                                        Image("Little Lemon logo")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                    }
                                    .frame(height: 80)

                                    Text(item.title)
                                        .font(.headline)
                                }
                                NavigationLink(destination: MenuItemDetailsView()) {
                                    EmptyView()
                                }
                                .opacity(0.0)
                            }
                        }
                    }
                    .padding(.vertical)
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("Menu")
            .navigationBarItems(trailing: Button(action: {
                shouldDisplayFilters = true
            }) {
                Image(systemName: "line.3.horizontal.decrease.circle.fill")
                    .imageScale(.large)
            })
            .popover(isPresented: $shouldDisplayFilters) {
                MenuItemsOptionView()
            }
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
