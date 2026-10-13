function checks(n: number): boolean {    
    let rev = 0;
    let x = n;
    while(x!=0){
        rev = (rev * 10) + (x % 10);
        x = Math.floor(x / 10);
    }
    return n === 2 * rev - 1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check if a given number is one less than twice its reverse.
