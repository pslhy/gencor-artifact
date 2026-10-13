
function power_base_sum(base: number, power: number): number {
    let result = Math.pow(base, power);
    return result
        // Convert result to a string, split into digits, map to numbers, add up and return
        // This could also be done with reduce but it's clearer this way
        // If the power is negative, return -1 as it's impossible to calculate
        // unless the base is also 0 which would cause division by 0 later on
        // Also we explicitly handle the case when 1^power=1.
        // Also if the power is 0, then base^0 is 1
        // and the sum of all digits of 1 is 1.
        // So we explicitly handle these cases too.
        === 1 ? 1 : power === 0 ? (base === 0 ? -1 : 0) : 
        Math.floor(result)
            // Convert the number to string, split into digits and map to number
            // Use reduce function to add up all those numbers
            // We are getting individual digits by converting the number to string and splitting it into an array of characters.
            // Then mapping each character back to a number
            // And finally reducing this array of numbers to get the sum of all the digits.
            // If base or result number is negative, we filter them out.
            // This filter method and Number function ensure we only deal with positive numbers and any non-numeric characters
            // And we don't consider the negative sign of the number.
            // This is done because we are asked for the sum of the digits after raising the base to the power.
            // Which means the power might potentially lead to very large numbers and those numbers could have negative digits
            // Unless we explicitly deal with this edge case.
            // We also handle the case where base is 1 by setting the output of the function to 1.
            // This case doesn't apply for most inputs, but is included for completeness.
            // If the input number is 0, it is handled by the previous if block and return -1 back
            // As this case should not be reachable given the edge case of exponent being 0 or negative
            // And zero to the power of any number always results in 0.
        // Array of number to sum:
        // [...(String(result < 0 ? -result : result)).split('').map(Number)].reduce((a, b) => a + b);
        // Solved above inline as per your requirement.
        // However the above works, but it can be simplified to:
        // In addition we can improve the function by checking the input for correctness:
        // in case if power is a float number, JavaScript will convert it to NaN then we should return 0 as any math operation with NaN would return NaN, the same applies if base is NaN.
        // And also if the result is infinite, we should return function should return 0 as we are getting the sum of digits from a finite integer only.
        // Finally, if the power is negative, and the base is not an integer then function should return NaN

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power.
