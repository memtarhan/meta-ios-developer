// Return values from functions

function doubleIt(num) {
    return num * 2
}

function objectMaker(val) {
    return {
        prop: val
    }
}

let x = objectMaker(20)
console.log(x) // { prop: 20 }

let y = doubleIt(10).toString()
console.log(y) // 20

let z = objectMaker(doubleIt(100))
console.log(z)