//Closure duplication

/*  Creating functions inside other functions
    can lead to duplicationin memory - slow performance
*/

var actionTracker = function(choice) {
    var tracking = {};
    return {
        setAction: function(action) {
            if(action) {
                tracking[choice] = action;
            }
        },
        getAction: function() {
            return tracking[choice];
        }
    };
};

var redTracker = actionTracker("red");
var blueTracker = actionTracker("blue");
// same method duplicated in memory

console.log(redTracker.getAction); 
console.log(blueTracker.getAction); 

/*  To avoid duplication it's more 
    practical to create a module pattern
    to create new objects sharing
    methods
*/