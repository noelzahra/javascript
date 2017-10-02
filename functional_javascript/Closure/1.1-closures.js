//Closures intro

//scope - var within a function only exists till function terminates

var publicFunction = function() {
    var privateVar = "Private var within a Function";
    return privateVar;
};

//console.log(privateVar);// returns an error


console.log(publicFunction()); //returns privateVar


//Within a closure inner functions have access to the parent vars

function init()
{
    var name = 'Scott';
    function displayInnerVar() {
        console.log ("My name is %s", name);
    }
    displayInnerVar();
}

init();//My name is Scott

function publicFunc() {
    var privateVar = "Inner private var";
    return function() {
        return privateVar;
    }
};

var privateFunction = publicFunc();//needs to be assigned to a var to return inner private var
console.log(privateFunction());


function add(x) {
    return function(y) {
        return x + y;
    };
}

var add5 = add(5); //needs to be assigned to a var to return inner private var
var add7 = add(7);
console.log(add5(3));//8
console.log(add7(3));//10