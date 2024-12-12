//
//  Dish+CoreDataClass.swift
//  LittleLemon
//
//  Created by Mehmet Tarhan on 12.12.2024.
//
//

import CoreData
import Foundation

@objc(Dish)
public class Dish: NSManagedObject {
    func formatPrice() -> String {
        let spacing = price < 10 ? " " : ""
        return "$ " + spacing + String(format: "%.2f", price)
    }
}
