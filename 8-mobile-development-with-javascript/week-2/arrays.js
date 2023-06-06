// Arrays are Objects

// Creating an Array
var fruits = []

// Appending item to an Array
fruits.push("apple") // ['apple]
fruits.push("pear") // ['apple', 'pear']

// Removing last item from an Array
fruits.pop() // ['apple']

function arrayBuilder(one, two, three) {
    var arr = []
    arr.push(one)
    arr.push(two)
    arr.push(three)

    return arr
}

let data = arrayBuilder('apple', 'pear', 'plum')
console.log(data) // [ 'apple', 'pear', 'plum' ]
