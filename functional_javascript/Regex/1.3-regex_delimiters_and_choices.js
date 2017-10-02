//Regex delimters and choices

console.log('\n==================\n\^ metacharacter class:\nfrom start of string\n==================\n');

var source = "To be or not to be that is the question";
var regex = /^to\sbe\s/i;//match the very first 'to be'
var result = source.replace(regex, 'To have ');
console.log(result);

console.log('\n==================\n\$ metacharacter class:\nfrom end of string\n==================\n');
var string = "It's all about beginnings and endings";
var regexMatchLast = /ings$/i;
var output = string.replace(regexMatchLast, "s");
console.log(output);

console.log('\n==================\n[a-z] metacharacter class:\nsets of chars\n==================\n');
var email = "noel@gmail.com";
var regexMatch = /@[a-zA-z]{5}/i;
console.log(email.replace(regexMatch, '@live'));

console.log('\n==================\n var1|var2 metacharacter class:\nor match\n==================\n');
var options = "Beauty is in the eye of the beholder";
var regexOption = /mind|eye/i;
var output = options.replace(regexOption, 'mind');

console.log('\n===========================\nchar? metacharacter class:\nchar before? is optional\n===========================\n');
var regexPlurals = /cars?|toys?|books?/i;
var storeString = "Items: Cars, Truck, Ships";
output = storeString.replace(regexPlurals, 'Trains');
console.log(output);