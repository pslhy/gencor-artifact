function odd_Equivalent(s: string, n: number): number {
    let count = 0;
    let len = s.length;
    
    for(let shift = 0; shift < len; shift++) {
        let rotated = s.slice(shift) + s.slice(0, shift);
        let binary = parseInt(rotated, 2);
        if(binary % 2 !== 0) count++;
    }
    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the number of numbers with an odd value when rotating a binary string the given number of times.
