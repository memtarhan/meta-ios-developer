//
//  Location+CoreDataProperties.swift
//  LittleLemon
//
//  Created by Mehmet Tarhan on 12.12.2024.
//
//

import Foundation
import CoreData


extension Location {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Location> {
        return NSFetchRequest<Location>(entityName: "Location")
    }

    @NSManaged public var neighborhood: String?
    @NSManaged public var city: String?
    @NSManaged public var phoneNumber: String?
    @NSManaged public var customers: NSSet?
    @NSManaged public var desserts: NSSet?
    @NSManaged public var dishes: NSSet?

}

// MARK: Generated accessors for customers
extension Location {

    @objc(addCustomersObject:)
    @NSManaged public func addToCustomers(_ value: Customer)

    @objc(removeCustomersObject:)
    @NSManaged public func removeFromCustomers(_ value: Customer)

    @objc(addCustomers:)
    @NSManaged public func addToCustomers(_ values: NSSet)

    @objc(removeCustomers:)
    @NSManaged public func removeFromCustomers(_ values: NSSet)

}

// MARK: Generated accessors for desserts
extension Location {

    @objc(addDessertsObject:)
    @NSManaged public func addToDesserts(_ value: Dessert)

    @objc(removeDessertsObject:)
    @NSManaged public func removeFromDesserts(_ value: Dessert)

    @objc(addDesserts:)
    @NSManaged public func addToDesserts(_ values: NSSet)

    @objc(removeDesserts:)
    @NSManaged public func removeFromDesserts(_ values: NSSet)

}

// MARK: Generated accessors for dishes
extension Location {

    @objc(addDishesObject:)
    @NSManaged public func addToDishes(_ value: Dish)

    @objc(removeDishesObject:)
    @NSManaged public func removeFromDishes(_ value: Dish)

    @objc(addDishes:)
    @NSManaged public func addToDishes(_ values: NSSet)

    @objc(removeDishes:)
    @NSManaged public func removeFromDishes(_ values: NSSet)

}

extension Location : Identifiable {

}
