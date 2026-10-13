function get_ludic(n: number): number[] {
    let ludicNumbers: number[] = [2];
    for (let i = 3; i <= n; i++) {
        if (isLudic(i, ludicNumbers)) {
            ludicNumbers.push(i);
        }
    }
    return ludicNumbers;
}

function isLudic(num: number, ludicNumbers: number[]): boolean {
    let indexToRemove: number = Math.floor(num / ludicNumbers[0]);
    return ludicNumbers.length - 1 >= indexToRemove && !ludicNumbers.includes(num);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get all lucid numbers smaller than or equal to a given integer.
