// The forEach() method

const fruits = ['kiwi', 'mango', 'apple', 'pear'];
function appendIndex(fruit, index) {
    console.log(`${index}. ${fruit}`);
} /*
0. kiwi
1. mango
2. apple
3. pear
*/

fruits.forEach(appendIndex);

const veggies = ['onion', 'garlic', 'potato'];
veggies.forEach( function(veggie, index) {
    console.log(`${index}. ${veggie}`);
});

// The filter() method
const nums = [0,10,20,30,40,50];
nums.filter( function(num) {
    return num > 20;
}) // [30,40,50]

// // The map method
// [0,10,20,30,40,50].map( function(num) {
//     return num / 10
// }) // [0,1,2,3,4,5]


// Working with Maps in JavaScript
let bestBoxers = new Map();
bestBoxers.set(1, "The Champion");
bestBoxers.set(2, "The Runner-up");
bestBoxers.set(3, "The third place");

console.log(bestBoxers);
// Map(3) {1 => 'The Champion', 2 => 'The Runner-up', 3 => 'The third place'}

bestBoxers.get(1); // 'The Champion'


// Working with Sets in JavaScript
const repetitiveFruits = ['apple','pear','apple','pear','plum', 'apple'];
const uniqueFruits = new Set(repetitiveFruits);
console.log(uniqueFruits); // {'apple', 'pear', 'plum'}

const meal = ["soup", "steak", "ice cream"];
let [starter] = meal;
console.log(starter);

let obj = {
    key: 1,
    value: 4
}

let output = { ...obj};
output.value -= obj.key;

console.log(output.value);

function count(...basket) {
    console.log(basket.length);
}

count(10, 9, 8, 7, 6)

// function scopeTest() {
//     var y = 44;
//     console.log(x);
// }
//
// var x = 33;
// scopeTest();

// let letter = "a" letter = "b";
// console.log(letter);

console.log("---------------")

var y2 = 44;
function scopeTest() { console.log(x2+y2); }

var x2 = 33;
scopeTest();

class Cake {
    constructor(lyr) {
        this.layers = lyr;
    }

    getLayers() {
        return this.layers;
    }
}

class WeddingCake extends Cake {
    constructor() {
        super(2);
    }

    getLayers() {
        return super.getLayers() * 5;
    }
}

var result = new WeddingCake();
console.log(result.getLayers());

class Animal {

}

class Dog extends Animal {
    constructor() {
        super();
        this.noise = "bark";
    }

    makeNoise() {
        return this.noise;
    }
}

class Wolf extends Dog {
    constructor() {
        super();
        this.noise = "growl";
    }
}

var animal = new Wolf();
console.log(animal.makeNoise());

function count2(food) {
    console.log(food.length)
}
count2("Burgers", "Fries", null);