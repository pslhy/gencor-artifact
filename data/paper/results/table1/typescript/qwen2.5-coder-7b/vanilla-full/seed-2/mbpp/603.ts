function get_ludic(n: number): number[] { 
    let ludicNumbers: number[] = [1, 2]; 
    let i: number = 2; 
    while (ludicNumbers[ludicNumbers.length - 1] + ludicNumbers[ludicNumbers.length - 2] <= n) {
        ludicNumbers.push(ludicNumbers[i] + ludicNumbers[i - 1]);
        i++;
    } 
    return ludicNumbers.filter(num => num <= n); 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get all lucid numbers smaller than or equal to a given integer.
