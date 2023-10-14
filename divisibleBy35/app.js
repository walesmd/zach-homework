const {  argv } = require('node:process');


const firstParam = parseInt(argv[2]);
const secondParam = parseInt(argv[3]);

// Area for improvement, make the 3 & 5 not magic numbers here
// Could probably store all the divisors you care about in an array
// let divisors = [3, 5];
// And then later on loop through those as well when you're looping through the spread.
let totalDivisibleBy3 = 0;
let totalDivisibleBy5 = 0;

// Assume the user put the low number first
let lowNumber = firstParam;
let highNumber = secondParam;

if (highNumber < lowNumber) {
    // The second param was lower, swap them
    [lowNumber, highNumber] = [highNumber, lowNumber]
}

const spreadNumbers = [];
// Make an array of the numbers between low and high
for (var i = lowNumber; i <= highNumber; i++) {
    if (number % 3 == 0) {
        console.log(`${number} is divisible by 3.`);
        totalDivisibleBy3++;
    }

    if (number %5 == 0) {
        console.log(`${number} is divisible by 5.`);
        totalDivisibleBy5++;
    }
};


console.log(`Total of numbers between ${lowNumber} and ${highNumber} divisible by 3 is: ${totalDivisibleBy3}`);
console.log(`Total of numbers between ${lowNumber} and ${highNumber} divisible by 5 is: ${totalDivisibleBy5}`);