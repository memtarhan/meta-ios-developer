import UIKit

var pastaTypesSet = Set<String>()
var pastaTypesArray = [String]()

pastaTypesSet.insert("Tagliatelle")
pastaTypesSet.insert("Fettuccine")
pastaTypesSet.insert("Spaghetti")
pastaTypesSet.insert("Linguine")

print(pastaTypesSet)
print(pastaTypesSet.count)

// pastaTypesSet.remove("Spaghetti")
// print(pastaTypesSet)

var pastaTypesSet2 = Set<String>()
pastaTypesSet2.insert("Tortellini")
pastaTypesSet2.insert("Ziti")
pastaTypesSet2.insert("Tagliatelle")
pastaTypesSet2.insert("Lasagna")

let pastaSetUnion = pastaTypesSet.union(pastaTypesSet2)
print(pastaSetUnion)
print(pastaSetUnion.count)

let reservationsOverInternet: Set = ["000-345-3223", "000-345-3323"]

let confirmationCodes: Set = ["LL3450","LL3451","LL3452", "LL3453", "LL3454"]
print("\(reservationsOverInternet.count) \(confirmationCodes.count)")
