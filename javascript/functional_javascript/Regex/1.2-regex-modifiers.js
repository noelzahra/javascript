//String replace methos with regex


//standard string function replace()
var string = 'kittens have mittens';
var replace = string.replace('kittens', 'cats');
console.log(replace);

console.log('\n==================\n\\i case insesitivity\nmodifier\n==================\n');
//Regex with case insesitivity modifier
var string3 = "THE CATS HAVE HATS";
function checkRegex (regex, string) {
    return regex.test(string);
}

console.log(checkRegex(/cat/i, string2));
console.log(checkRegex(/cat/i, string3));


console.log('\n==================\n\\g global modifier\n==================\n');
//global modifier /g
var string2 = "To be or not to become"
var regex = /be/g;
var replace = string2.replace(regex, 'see');
console.log(replace);


console.log('\n====================================\n+ and * quantifiers - matching one\nor more preceding chars\n====================================\n');
//quantifiers + and *


var plusMatch = /12+3/; // + matches one or more preceeding elements (12 before 3)
console.log(plusMatch.test.toString(123)); //true
console.log(plusMatch.test.toString(1222222223)); //true
console.log(plusMatch.test.toString(13)); //false

var splatMatch = /12*3/; // * matches zero or more preceeding elements
console.log(splatMatch.test('123')); //true
console.log(splatMatch.test('1222222223')); //true
console.log(splatMatch.test('13')); //true
console.log(splatMatch.test('333')); //false


console.log('\n==================\n\\s character class:\nwhitespace\n==================\n');

var whitespace = /\s+/g;
var source = 'Lots of    spaces';
var result = source.replace(whitespace, " ");
console.log('Initial string: %s\nConverted: %s', source, result);

var source = "To be or not to be that is the question";
var regex = /be\s/;
var result = source.replace(regex, 'have ');
console.log(result);