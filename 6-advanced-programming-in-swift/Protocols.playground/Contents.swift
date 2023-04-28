import UIKit

// MARK: - Protocols

// A set of required properties and methods representing specific functionality
// Blueprint

protocol Employee {
    var name: String { get }
    var daysWorking: Int { get set }

    func executePrimaryDuty()
    func danceToHappyBirthdaySong(lyrics: String)
}

// MARK: - Implement required and optional protocol methods

// @objc attribute
// Make your code compatible with objective-c and swift
// Optional protocols work only with Classes (not Structs)
@objc protocol OptionalProtocol {
    @objc optional func methodIdentifier(parameter: Int) -> Int
    @objc optional var propertyIdentifier: Int { get }
}

@objc protocol ReservationDataSource {
    @objc optional func reserve(tables: Int) -> Int
    @objc optional var maxReservableTables: Int { get }
}

class Reservation: ReservationDataSource {
    func reserve(tables: Int) -> Int {
        if tables < 1 {
            return 0
        }
        return tables
    }
}

class ReservationAgent: ReservationDataSource {
    let maxReservableTables: Int = 2
}
