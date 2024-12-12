//
//  Dessert+CoreDataProperties.swift
//  LittleLemon
//
//  Created by Mehmet Tarhan on 12.12.2024.
//
//

import Foundation
import CoreData


extension Dessert {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Dessert> {
        return NSFetchRequest<Dessert>(entityName: "Dessert")
    }

    @NSManaged public var name: String?
    @NSManaged public var price: Float
    @NSManaged public var size: String?
    @NSManaged public var customers: NSSet?
    @NSManaged public var locations: NSSet?

}

// MARK: Generated accessors for customers
extension Dessert {

    @objc(addCustomersObject:)
    @NSManaged public func addToCustomers(_ value: Customer)

    @objc(removeCustomersObject:)
    @NSManaged public func removeFromCustomers(_ value: Customer)

    @objc(addCustomers:)
    @NSManaged public func addToCustomers(_ values: NSSet)

    @objc(removeCustomers:)
    @NSManaged public func removeFromCustomers(_ values: NSSet)

}

// MARK: Generated accessors for locations
extension Dessert {

    @objc(addLocationsObject:)
    @NSManaged public func addToLocations(_ value: Location)

    @objc(removeLocationsObject:)
    @NSManaged public func removeFromLocations(_ value: Location)

    @objc(addLocations:)
    @NSManaged public func addToLocations(_ values: NSSet)

    @objc(removeLocations:)
    @NSManaged public func removeFromLocations(_ values: NSSet)

}

extension Dessert : Identifiable {

}
