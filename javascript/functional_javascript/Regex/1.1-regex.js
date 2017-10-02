//Regex

var phoneFormatted = function(submission) {
    var counter, current;
    var submissionLength = submission.length;
    var numberArray = [ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' ];
    var separator = '-';

    if (typeof submission !== 'string' || submissionLength !== 8 ){
        return false;
    }

    for (counter = 0; counter < submissionLength; counter++) {
        current = submission[counter];
            if (numberArray.indexOf(current) === -1) {
                if (counter !== 3) {
                return false;
            } else if (current != separator){
                return false;
            }
        }
    }
    return true;
};

console.log(phoneFormatted("3235649"));
console.log(phoneFormatted('323-5649'));

//regex function test
var phoneoFormattedRegex = function(submission) {
    return /^\d{3}-\d{4}$/.test(submission);
}

console.log(phoneoFormattedRegex("3235649"));
console.log(phoneoFormattedRegex('323-5649'));

//Declaring a regex
console.log('\n==================\nDeclaring a regex\n==================\n');
function stringFormatRegex(match, string) {
    return match.test(string);
}

var itMatches = new RegExp("it");
var anotherMatch = /.fore/;

console.log(stringFormatRegex(itMatches, 'The kitten plays with the mitten'));
console.log(stringFormatRegex(anotherMatch, "Before you start"));

var match = "cats";
var string1 = "Kittens have mittens";
var string2 = "The cats have hats";
function checkMatch(match, string) {
    var regex = new RegExp(match);
    return regex.test(string);
}

console.log(checkMatch(match, string1));
console.log(checkMatch(match, string2));