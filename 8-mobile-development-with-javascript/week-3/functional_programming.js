// The functional programming paradigm

/*
When writing FP code, we keep data and functionality separate and pass data into
functions only when we want something computed.
 */

function getDistance(mph, h) {
    return mph * h
}

var mph = 60
var h = 2
var distance = getDistance(mph, h)

/*
In functional programming, functions return new values and then use those values somewhere else in the code.
 */
console.log(distance)

/*
First-class functions
It is often said that functions in JavaScript are “first-class citizens”. What does that mean?

It means that a function in JavaScript is just another value that we can:
* pass to other functions
* save in a variable
* return from other functions

In other words, a function in JavaScript is just a value - from this vantage point,
almost no different from a string or a number.
 */

function addTwoNums(a, b) {
    console.log(a + b)
}

function randomNum() {
    return Math.floor(Math.random() * 10 + 1)
}

function specificNum() {
    return 42
}

var useRandom = true
var getNumber

if (useRandom) {
    getNumber = randomNum

} else {
    getNumber = specificNum
}

addTwoNums(getNumber, getNumber)

// In OOP, methods update properties stored in the object instead of generating new return values.

var virtualPet = {
    sleepy: true,
    nap: function () {
        this.sleepy = false
    }
}

console.log("Sleeping:", virtualPet.sleepy)
virtualPet.nap()
console.log("Sleeping:", virtualPet.sleepy)


/*
Higher-order functions

A higher-order function is a function that has either one or both of the following characteristics:

-   It accepts other functions as arguments
-   It returns functions when invoked
 */

function addTwoNumbers(getNumber1, getNumber2) {
    console.log(getNumber1() + getNumber2())
}

addTwoNumbers(specificNum, specificNum)
addTwoNumbers(specificNum, randomNum)

// Task 1: Build a function-based console log message generator
function consoleStyler(color, background, fontSize, txt) {
    var message = "%c" + txt;
    var style = `color: ${color};`
    style += `background: ${background};`
    style += `font-size: ${fontSize};`
    console.log(message, style);
}

// Task 2: Build another console log message generator
function celebrateStyler(reason) {
    var fontStyle = "color: tomato; font-size: 50px";
    if (reason == "birthday") {
        console.log(`%cHappy birthday`, fontStyle);

    } else if (reason == "champions") {
        console.log(`%cCongrats on the title!`, fontStyle);

    } else {
        var message = "No message";
        var style = fontStyle;
        console.log(message, style);
    }
}

// Task 3: Run both the consoleStyler and the celebrateStyler functions
consoleStyler('#1d5c63', '#ede6db', '40px', 'Congrats');
celebrateStyler('birthday');

// Task 4: Insert a congratulatory and custom message
function styleAndCelebrate(color, background, fontSize, txt, reason) {
    consoleStyler(color, background, fontSize, txt);
    celebrateStyler(reason);
}
// Call styleAndCelebrate
styleAndCelebrate('ef7c8e', 'fae8e0', '30px', 'You made it!', 'champios');
