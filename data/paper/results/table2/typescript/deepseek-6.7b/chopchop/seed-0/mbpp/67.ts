
function bell_number(n: number): number {
    let bell = (n+1) * 1; 
    let bell_triangle = ((n+1) * (n+2)) / 2;

    for(let i = 3; i <= n; i++) {
        let temp = 0;
        for(let j = 0; j < i; j++) {
            temp += bell_triangle * bell;
            bell_triangle = bell_triangle * (i-j) / (j+1) ;
            bell = temp;
        }
    }

    return bell;
}

function ways_to_partition(n: number): number {
    let answer = 0;

    for(let i = 0;

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of ways to partition a set of Bell numbers.
