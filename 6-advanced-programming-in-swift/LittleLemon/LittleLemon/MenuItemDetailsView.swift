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
        GeometryReader { geometry in
            ScrollView {
                VStack(alignment: .center, spacing: 20) {
                    Image("Little Lemon logo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: geometry.size.height / 3)
                    VStack {
                        Text("Price:")
                            .font(.headline)
                        Text(item.price, format: .currency(code: Locale.current.currency?.identifier ?? "EUR"))
                            .font(.title3)
                    }
                    
                    VStack {
                        Text("Ordered:")
                            .font(.headline)
                        Text("\(item.ordersCount)")
                            .font(.title3)
                    }
                    
                    VStack {
                        Text("Ingredients:")
                            .font(.headline)
                        ForEach(item.ingredients, id: \.self) { ingredient in
                            Text(ingredient.rawValue.capitalized)
                                .font(.title3)
                        }
                        
                    }
                }
                .frame(width: geometry.size.width)
            }
        }
        .navigationTitle(item.title)
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView(item: .constant(MenuItem.sample))
    }
}
