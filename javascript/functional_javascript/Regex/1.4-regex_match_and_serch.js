//Maych index regex

console.log('\n==================\n[A-Z] metacharacter class:\n==================\n');

var string = "No more CAPS";
var regex = /[A-Z]{4}$/;

var output = string.replace(regex, '');
console.log(output);


var string2 = "system";
var matchVowel = /[aeiou]/;

console.log('\n==================\n[A-Z] metacharacter class:\nmatch index\n==================\n');
var result = string2.match(matchVowel);
console.log(result);


console.log('\n==================\n[A-Z] metacharacter class:\nsearch index\n==================\n');
var result2 = string2.search(matchVowel);
console.log(result2);

console.log(matchVowel.source);
console.log(matchVowel.flags);