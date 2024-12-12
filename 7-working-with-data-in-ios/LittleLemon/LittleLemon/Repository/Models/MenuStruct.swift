//
//  MenuStruct.swift
//  LittleLemon
//
//  Created by Mehmet Tarhan on 12.12.2024.
//

import Foundation

struct JSONMenu: Codable {
    let menu: [MenuItem]
}

struct MenuItem: Codable, Identifiable {
    var id = UUID()
    let title: String
    let price: String
}
