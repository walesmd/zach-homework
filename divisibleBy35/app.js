const {  argv } = require('node:process');

let lowNumber = parseInt(argv[2]);
let highNumber = parseInt(argv[3]);

// Area for improvement, make the 3 & 5 not magic numbers here
// Could probably store all the divisors you care about in an array
// let divisors = [3, 5];
// And then later on loop through those as well when you're looping through the spread.
let totalDivisibleBy3 = 0;
let totalDivisibleBy5 = 0;

if (lowNumber > highNumber) {
    // The second param was lower, swap them
    [lowNumber, highNumber] = [highNumber, lowNumber]
}

// Make an array of the numbers between low and high
for (let i = lowNumber; i <= highNumber; i++) {
    if (i % 3 == 0) {
        console.log(`${i} is divisible by 3.`);
        totalDivisibleBy3++;
    }

    if (i %5 == 0) {
        console.log(`${i} is divisible by 5.`);
        totalDivisibleBy5++;
    }
};


console.log(`Total of numbers between ${lowNumber} and ${highNumber} divisible by 3 is: ${totalDivisibleBy3}`);
console.log(`Total of numbers between ${lowNumber} and ${highNumber} divisible by 5 is: ${totalDivisibleBy5}`);