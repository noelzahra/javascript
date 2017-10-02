//Closure use

//Closure as a private storage for data
var tracking = {}; //Empty object
function trackActions(item, choice) {
    if(choice) {
        tracking[item] = choice;
    }
    return tracking[item];
}

trackActions("red", "click");
console.log(trackActions("red"));//click
console.log(tracking.red);//click

function actionTracker(choice) {
    var tracking = {}; //privat object
    return function(action) {
        if(action) {
            tracking[choice] = action;
        }
        return tracking[choice];
    };
}

var redTracker = actionTracker("red");
var blueTracker = actionTracker("blue");
var secretTracker = actionTracker("secret");

console.log(blueTracker("blue click"));
console.log(redTracker("red touch"));

//closure with getters and setters
function clickTracker(choice) {
    var tracking = {};
    return {

        setAction : function(action){
            if(action){
                tracking[choice] = action;
            }
        },

        getAction : function() {
            return tracking[choice];
        }
    };
}

var redClick = clickTracker("red");
redClick.setAction("click");
console.log(redClick.getAction());