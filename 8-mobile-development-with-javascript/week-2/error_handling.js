function addTowNumbers(a, b) {
    try {
        if (typeof (a) != 'number') {
            throw new ReferenceError('the first argument is not a number')

        } else if (typeof (b) != 'number') {
            throw new ReferenceError('the second argument is not a number')

        } else {
            console.log(a + b)
        }

    } catch (err) {
        console.log("Error!", err)
    }
}

addTowNumbers(5, "5")
console.log("It still works")

var result = null
console.log(result)

try {
    Number(5).toPrecision(300)
} catch (e) {
    console.log("error")
}