
function get_total_number_of_sequences(m: number, n: number): number { // Function to get total number of sequences
    let cache = new Array(m + 1).fill(0).map(x => new Array(n + 1).fill(-1)); // Matrix for memoization

    function find_sequences(t: number, length: number): number { // Recursive function to find sequences
        if (length === 1) return t; // Base case: if length is 1, return t
        if (cache[t][length] !== -1) return cache[t][length]; // Return cached result if available
        let sum = 0;
        for (let i = t; i <= m; i++) {
            if (2 * t <= i) {
                sum += find_sequences(i, length - 1); // Recursively find sequences
            }
        }
        cache[t][length] = sum; // Cache the result
        return sum;
    }

    let total_sequences = 0;
    for (let i = 1; i <= m; i++) {
        total_sequences += find_sequences(i, n); // Sum up sequences starting from each possible first element
    }
    return total_sequences;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
