//Closures

/*  Closures created in the same scope share the same variables
    Will refelct their current value at time of creation
*/

var counter;
var functions = [];
var values = [];

for(counter = 0; counter < 5; counter++) {
    values[counter] = counter;
    functions[counter] = function() {
        return counter;
    };
}

console.log(values[0]);
console.log(values[2]);
console.log(values[4]);
console.log(functions[0]());
console.log(functions[4]());

console.log("\n=================\nConstructor function\nused in closure\n=================\n")

/*  Ideally do not defien functions in a loop
    loops do not have thier own scope
    Constructor functions create an indepedent
    scope for each closure created
*/

var count;
var functionFromConstructor = [];
var valuesArray = [];
//Constuctor function
var makeReturner = function(value) {
    return function() {
        return value;
    };
};

for (count= 0; count < 5; count++) {
    valuesArray[count] = count;
    functionFromConstructor[count] = makeReturner(count);
}

console.log(valuesArray[0]);
console.log(valuesArray[2]);
console.log(valuesArray[4]);
//Function now knows about count value
console.log(functionFromConstructor[0]());
console.log(functionFromConstructor[2]());
console.log(functionFromConstructor[4]());

console.log("\n=================\nES6 use let keyword in loop\nused in closure\n=================\n")
//ES6 'let' creates a locallly scoped var in loops

var functionES6 = [];
var valuesES6 = [];
// No counter var, let wil take care of that

for (let counter = 0; counter < 5; counter++) {
    valuesES6[counter] = counter;
    functionES6[counter] = function() {
        return counter;
    };

}

console.log(valuesES6[0]);
console.log(valuesES6[2]);
console.log(valuesES6[4]);
console.log(functionES6[0]());
console.log(functionES6[2]());
console.log(functionES6[4]());