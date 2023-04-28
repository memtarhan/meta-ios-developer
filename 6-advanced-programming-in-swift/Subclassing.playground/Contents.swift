import UIKit

class Vegetable {
    var primaryColor: String { "green" }

    func sing() {
        print("I'm an awesome vegetable.")
    }
}

class Spinach: Vegetable {
}

class Broccoli: Vegetable {
    override func sing() {
        print("\(primaryColor) is my favorite color")
        super.sing()
        print("I like the sun")
    }
}

class Carrot: Vegetable {
    override var primaryColor: String { "Orange" }
}

let spinach = Spinach()
let broccoli = Broccoli()
let carrot = Carrot()

print(spinach.primaryColor)
print(broccoli.primaryColor)
print(carrot.primaryColor)

spinach.sing()
broccoli.sing()
carrot.sing()

// MARK: - Access Control

/*
 What are access-level modifiers?
 An access-level modifier is a syntax to declare the privacy setting for your code.

 There are five privacy settings. In the order from most to least restrictive, the available access-level modifiers are:

 private - Allows the code within a code definition to access the code.

 fileprivate - Allows the defining source file to access the code.

 internal - Allows source files from the defining module to access the code.

 public - Allows source files from other modules to access the code, however, other modules can’t subclass and override classes.

 open - Allows source files from other modules to access the code. Other modules can subclass and override classes.
 */
