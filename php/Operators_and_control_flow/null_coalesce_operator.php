<?php
//Null coalesce operator

$authors = ["Ernest Hemingway", "Joseph Heller", "Mark Twain", "Michael Chabon", "Ayn Rand"];
$count = count($authors);

echo "Null coalesce operator is a condensed ternary operator\n";

//Ternary operator:
$outcome = $count ? $count : "No authors listed";
echo $outcome.PHP_EOL;

//Null coalesce operator:
$outcome2 = $count ?? "Count unavailable";
echo $outcome2;