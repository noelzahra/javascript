//useful regex patterns

console.log('\n==================\n[a-z] metacharacter class:\nsearch chars\n==================\n');

var lyrics = "Do I dare distrub the universe";
var match = /[a-z]*$/;
var output = lyrics.replace(match, 'world');
console.log(output);

var matchCaps = /^[A-Z]\w/;
var output2 = lyrics.replace(matchCaps, "We");
console.log(output2);

console.log('\n==================\n[0-9] metacharacter class:\nsearch numbers\n==================\n');

var numbers = 'mobile: 283481';
var numMatch = /\d+/;
var result = numbers.replace(numMatch, '452617');
console.log(result);

var bill = 'Total: € 3004.44';
var matchVal = /\d{3,6}/;
var result = bill.replace(matchVal, '33');
console.log(result);

console.log('\n==================\n[A-Z0-9] metacharacter class:\nsearch numbers and chars\n==================\n');

var email = 'noel@gmail.com';
var regex = /^[a-z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$/i;
var changeEmail = email + ' email replaced: ' +  email.replace(regex, 'ruth@live.com');
console.log(changeEmail);