
function bell_number(n: number): number { // Function to calculate Bell number
    let bell = 1;
    for (let i = 1; i <= n; i++) {
        bell = bell * (i + 1) / (i + 1);
    }
    return Math.round(bell); // Bell number can be fractional, rounding it makes sense here
}

function partition_count(n: number): number { // Function to count the number of partitions
    let partitions = 1;
    for (let i = 1; i <= n - 1; i++) {
        partitions += bell_number(i) * partition_count(n - i);
    }
    return partitions;
}

// Usage
const n = 5; // Number of elements in the set
const count = partition_count(n);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of ways to partition a set of Bell numbers.
