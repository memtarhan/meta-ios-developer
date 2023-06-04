//
//  MenuItemsOptionView.swift
//  LittleLemon
//
//  Created by Mehmet Tarhan on 03/06/2023.
//

import SwiftUI


enum Category: String, CaseIterable, Identifiable {
    case food
    case drink
    case dessert

    var id: Self {
        self
    }

    var title: String {
        rawValue.capitalized
    }
}

enum SortType: CaseIterable, Identifiable {
    case popularity
    case price
    case alphabetical

    var id: Self {
        self
    }

    var title: String {
        switch self {
        case .popularity:
            return "Most Popular"
        case .price:
            return "Price $-$$$"
        case .alphabetical:
            return "A-Z"
        }
    }
}

struct CategoriesSectionData: Identifiable {
    let id = UUID()
    let title = "SELECTED CATEGORIES"
    let items = Category.allCases
}

struct SortBySectionData: Identifiable {
    let id = UUID()
    let title = "SORT BY"
    let items = SortType.allCases
}

struct MenuItemsOptionView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    private var categories = CategoriesSectionData()
    private var sortBy = SortBySectionData()

    var body: some View {
        NavigationStack {
            List {
                Section(categories.title) {
                    ForEach(categories.items) { item in
                        Text(item.title)
                    }
                }
                Section(sortBy.title) {
                    ForEach(sortBy.items) { item in
                        Text(item.title)
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        self.presentationMode.wrappedValue.dismiss()
                    }
                }
            }
        }
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
    }
}
