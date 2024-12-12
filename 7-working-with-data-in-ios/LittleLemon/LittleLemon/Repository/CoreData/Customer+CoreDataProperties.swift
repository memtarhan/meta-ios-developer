//
//  Customer+CoreDataProperties.swift
//  LittleLemon
//
//  Created by Mehmet Tarhan on 12.12.2024.
//
//

import Foundation
import CoreData


extension Customer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Customer> {
        return NSFetchRequest<Customer>(entityName: "Customer")
    }

    @NSManaged public var email: String?
    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    @NSManaged public var phoneNumber: String?
    @NSManaged public var locations: NSSet?
    @NSManaged public var desserts: NSSet?
    @NSManaged public var dishes: NSSet?

}

// MARK: Generated accessors for locations
extension Customer {

    @objc(addLocationsObject:)
    @NSManaged public func addToLocations(_ value: Location)

    @objc(removeLocationsObject:)
    @NSManaged public func removeFromLocations(_ value: Location)

    @objc(addLocations:)
    @NSManaged public func addToLocations(_ values: NSSet)

    @objc(removeLocations:)
    @NSManaged public func removeFromLocations(_ values: NSSet)

}

// MARK: Generated accessors for desserts
extension Customer {

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
extension Customer {

    @objc(addDishesObject:)
    @NSManaged public func addToDishes(_ value: Dish)

    @objc(removeDishesObject:)
    @NSManaged public func removeFromDishes(_ value: Dish)

    @objc(addDishes:)
    @NSManaged public func addToDishes(_ values: NSSet)

    @objc(removeDishes:)
    @NSManaged public func removeFromDishes(_ values: NSSet)

}

extension Customer : Identifiable {

}
