//
//  MenuItemsView.swift
//  LittleLemon
//
//  Created by Mehmet Tarhan on 03/06/2023.
//

import SwiftUI

struct MenuItemsView: View {
    @ObservedObject var viewModel = MenuViewViewModel()

    @State private var shouldDisplayFilters = false

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]

    var body: some View {
        NavigationStack {
            List(viewModel.menu) { menuSection in
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
                                NavigationLink(destination: MenuItemDetailsView(item: .constant(item))) {
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
