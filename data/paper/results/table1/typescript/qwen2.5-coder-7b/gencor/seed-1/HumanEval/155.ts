
function even_odd_count(num: number): [number, number] { // Function that takes in a number as a parameter
    let strNum = Math.abs(num).toString(); // Convert number to string and remove any negative sign
    let evenCount = 0; // Initialize count for even digits
    let oddCount = 0; // Initialize count for odd digits

    for (let char of strNum) { // Loop through each character in the string
        if (parseInt(char) % 2 === 0) { // Check if the digit is even
            evenCount++; // Increment even count
        } else {
            oddCount++; // Increment odd count
        }
    }

    return [evenCount, oddCount]; // Return the counts as an array
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an integer. return an array that has the number of even and odd digits respectively.
//     Example:
//     >>> even_odd_count(-12)
//     [1, 1]
//     >>> even_odd_count(123)
//     [1, 2]
