// Object Literals and the Dot Notation

var user = {} // create an object

var assistantManager = {
    rangeTilesPerTurn: 3,
    socialSkills: 30,
    streetSmarts: 30,
    health: 40,
    specialAbility: "young and ambitious",
    greeting: "Let's make some money"
}

var table = {
    legs: 3,
    color: "brown",
    priceUSD: 100,
}
console.log(table) // { legs: 3, color: 'brown', priceUSD: 100 }
console.log(table.priceUSD) // 100

var house = {
    rooms: 3,
    color: "brown",
    priceUSD: 10000,
}

var house2 = {}
house2.rooms = 4
house2.color = "pink"
house2.priceUSD = 200000

console.log(house) // { rooms: 3, color: 'brown', priceUSD: 10000 }
house.windows = 10
console.log(house) // { rooms: 3, color: 'brown', priceUSD: 10000, windows: 10 }
house.windows = 12
console.log(house) // { rooms: 3, color: 'brown', priceUSD: 10000, windows: 12 }

// Object Literals and the Brackets Notation
var car = {}
car.color = "red"
car["color"] = "green"
car["speed"] = 200
car.speed = 100
console.log(car) // { color: 'green', speed: 100 }

// With the brackets' notation, I can add space characters inside property names, like this:
car["number of doors"] = 4
console.log(car) // { color: 'green', speed: 100, 'number of doors': 4 }

// Additionally, I can add numbers (as the string data type) as property keys:
car["2022"] = 1901
console.log(car) // { '2022': 1901, color: 'green', speed: 100, 'number of doors': 4 }

/*
Finally, there's one really useful thing that bracket notation has but is not available in the dot notation:
It can evaluate expressions.
 */
var arrOfKeys = ['speed', 'altitude', 'color']
var drone = {
    speed: 100,
    altitude: 200,
    color: "red"
}

for (var i = 0; i<arrOfKeys.length; i++) {
    console.log(drone[arrOfKeys[i]])
}
/*
100
200
red
 */

// Object Methods
var car2 = {}
car2.color = "red"

car2.turnKey = function () {
    console.log("engine running")
}

car2.turnKey()

console.log(typeof(car2))