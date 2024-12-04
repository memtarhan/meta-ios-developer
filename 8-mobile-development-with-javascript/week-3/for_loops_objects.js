const car = {
    speed: 100,
    color: "blue"
}

// for (prop of car) {
//     console.log(prop); // Uncaught TypeError: car is not iterable
// }

const colors = ["red", "green", "blue"];
for (var color of colors) {
    console.log(color);
}

const car2 = {
    speed: 200,
    color: "red"
}
console.log(Object.keys(car2)); // ['speed','color']

const car3 = {
    speed: 300,
    color: "yellow"
}
console.log(Object.values(car3)); // [300, 'yellow']

const car4 = {
    speed: 400,
    color: 'magenta'
}
console.log(Object.entries(car4)); // [ ['speed', 400], ['color', 'magenta'] ]

// Iterating the Object keys using for loop
const obj = {a: 1, b: 2, c: 3};
const keys = Object.keys(obj);

for (let i = 0; i < keys.length; i++) {
    console.log(keys[i]);
}

// Iterating Object keys using for...in loop
const obj2 = {a: 1, b: 2, c: 3};

for (const prop in obj2) {
    console.log(prop + ": " + obj2[prop]);
}

// Iterating over Object values using for...of loop
const obj3 = {a: 1, b: 2, c: 3};
for (const value of Object.values(obj3)) {
    console.log(value);
}

/*
Benefits of using for...in and for...of loop

In modern JavaScript both for...in and for...of loops are useful to write clean code.

Here are a few benefits of using the for...in loop:

It allows you to easily access the properties of an object.

It can be used to loop through objects with unknown property names.

It can be used to modify the values of object properties.



Here are some benefits of using the for...of loop:

It allows you to easily iterate over the values of an iterable object, such as an array.

It provides a concise and readable syntax for iteration.

It can be used to perform operations on the values of an iterable object.
 */