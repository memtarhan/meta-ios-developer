var globalVar = 77;

function scopeTest() {
    var localVar = 88;
}

// console.log(localVar)

function meal(animal) {
    animal.food = animal.food + 10;
}

var dog = {
    food: 10
};

meal(dog);
meal(dog)

console.log(dog.food)

function two() {
    return 2;
}

function one() {
    return 1;
}

function calculate(initialValue, incrementValue) {
    return initialValue() + incrementValue() + incrementValue();
}

console.log(calculate(two, one))