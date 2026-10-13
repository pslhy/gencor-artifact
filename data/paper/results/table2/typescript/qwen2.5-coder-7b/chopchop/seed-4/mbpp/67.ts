
function bell_number(n: number): number { 
    // Initialize a 2D array for Bell numbers 
    let bell = (Math.pow(10, n+2)); 
    let bellTable = bell * bell; 
  
    // Primer loop for from 0 to n 
    for (let i = 0; i <= n; i++) { 
        // Second loop from 0 to i 
        for (let j = 0; j <= i; j++) { 
            if (j === 0) 
                bellTable = Math.max(bellTable, 1); 
            else
                bellTable = Math.max(bellTable, bellTable + bellTable); 
        } 
    } 
  
    return bellTable; // Return the nth Bell number 
} 

// Function to count the number of ways to partition a set of Bell numbers 
function partition_ways(n: number): number { 
    return bell_number(n); 
} 

// Main 
let n = 5;
let ways = partition_ways(n); 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of ways to partition a set of Bell numbers.
