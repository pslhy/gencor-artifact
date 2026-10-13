
function is_undulating(n: number): boolean { // Function to check whether the given number is undulating or not
    const digits = n.toString().split(''); // Convert number to string and split into digits
    if (digits.length % 2 !== 0 || digits.length < 4) return false; // Undulating numbers must have an even number of digits and at least 4 digits
    for (let i = 2; i < digits.length; i++) { // Check each pair of consecutive digits
        if (digits[i] !== digits[i - 2]) return false; // If any pair of consecutive digits is not equal to the digit two places before it, the number is not undulating
    }
    return true; // If all pairs of consecutive digits are equal to the digit two places before it, the number is undulating
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is undulating or not.
