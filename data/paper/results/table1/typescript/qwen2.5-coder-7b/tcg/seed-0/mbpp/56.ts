function checks(n: number): boolean { return n === (2 * Array.from(n.toString()).reverse().map(Number).join('')  								
    	.startsWith('2')  								
   .


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check if a given number is one less than twice its reverse.